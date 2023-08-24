import { ForbiddenException, Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { PrismaService } from 'src/prisma';
import { AuthLoginDto, AuthSignUpDto } from './dto';
import { User } from '@prisma/client';
import * as argon from 'argon2';
import { MyArgonOptions } from 'src/types';
import { AuthResponse, Tokens } from './types';
import { JwtService } from '@nestjs/jwt';

//TODO: Update fcm tokens method
@Injectable()
export class AuthService {
  constructor(
    private prisma: PrismaService,
    private config: ConfigService,
    private jwt: JwtService,
  ) {}

  async signUpLocal(signUpDto: AuthSignUpDto): Promise<AuthResponse> {
    const passwordHash = await this.hashData(signUpDto.password);
    const newUser = await this.prisma.user.create({
      data: {
        email: signUpDto.email,
        passwordHash,
        username: signUpDto.username,
        firstName: signUpDto.firstName,
        lastName: signUpDto.lastName,
        fcmToken: signUpDto.fcmToken,
      },
    });
    const tokens = await this.getTokens(
      newUser.id,
      newUser.email,
      newUser.username,
    );
    const user = await this.updateRtHash(newUser.id, tokens.refreshToken);
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { passwordHash: _, refreshTokenHash: __, ...filteredUser } = user;
    return { ...filteredUser, ...tokens };
  }

  async loginLocal(loginDto: AuthLoginDto): Promise<AuthResponse> {
    const user = await this.prisma.user.findUnique({
      where: { username: loginDto.username },
    });
    if (!user) throw new ForbiddenException('Check your credentials.');

    const passwordMatch = await this.verifyHash(
      user.passwordHash,
      loginDto.password,
    );
    if (!passwordMatch) throw new ForbiddenException('Check your credentials.');
    const tokens = await this.getTokens(user.id, user.email, user.username);
    const {
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      passwordHash: _,
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      refreshTokenHash: __,
      ...filteredUser
    } = await this.updateRtHash(user.id, tokens.refreshToken);
    return { ...filteredUser, ...tokens };
  }

  async logout(userId: string) {
    await this.prisma.user.updateMany({
      where: {
        id: userId,
        refreshTokenHash: {
          not: null,
        },
      },
      data: {
        refreshTokenHash: null,
        fcmToken: null,
      },
    });
    return { message: 'Logged out successfully.' };
  }

  async refreshTokenGeneration(
    userId: string,
    refreshToken: string,
  ): Promise<Tokens> {
    const user = await this.prisma.user.findUnique({ where: { id: userId } });
    if (!user || !user.refreshTokenHash)
      throw new ForbiddenException('Access denied');

    const tokenMatches = this.verifyHash(user.refreshTokenHash, refreshToken);
    if (!tokenMatches) throw new ForbiddenException('Access denied.');

    const tokens = await this.getTokens(user.id, user.email, user.username);
    return tokens;
  }

  private async updateRtHash(userId: string, refreshToken: string) {
    const hash = await this.hashData(refreshToken);
    const user = await this.prisma.user.update({
      where: { id: userId },
      data: { refreshTokenHash: hash },
    });
    return user;
  }

  private hashData(data: string) {
    const opts = this.config.get<MyArgonOptions>('argon');
    return argon.hash(data, { ...opts?.argon });
  }

  private verifyHash(hash: string, data: string) {
    const opts = this.config.get<MyArgonOptions>('argon');
    return argon.verify(hash, data, { ...opts?.argon });
  }

  private async getTokens(
    userId: string,
    email: string,
    username: string,
  ): Promise<Tokens> {
    const [at, rt] = await Promise.all([
      this.jwt.signAsync(
        { id: userId, email, username },
        {
          secret: this.config.get('ACCESS_TOKEN_SECRET'),
          expiresIn: '5m', //15 min
        },
      ),
      this.jwt.signAsync(
        { id: userId, email, username },
        {
          secret: this.config.get('REFRESH_TOKEN_SECRET'),
          expiresIn: '7 days', //1 week
        },
      ),
    ]);
    return {
      accessToken: at,
      refreshToken: rt,
    };
  }
}
