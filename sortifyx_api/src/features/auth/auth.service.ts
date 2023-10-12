import {
  BadRequestException,
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { PrismaService } from 'src/global/prisma';
import { AuthLoginDto, AuthSignUpDto, CheckUsernameOrEmailDto } from './dto';
import * as argon from 'argon2';
import {
  CommonMessageResponse,
  MyArgonOptions,
  ResponseWithData,
} from 'src/types';
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
        username: '',
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

  async checkUsernameOrEmail(
    checkUsernameOrEmailDto: CheckUsernameOrEmailDto,
  ): Promise<CommonMessageResponse> {
    if (!checkUsernameOrEmailDto.email && !checkUsernameOrEmailDto.username) {
      throw new BadRequestException(
        'Please provide username or email to verify.',
      );
    }
    const user = await this.prisma.user.findFirst({
      where: {
        OR: [
          { username: checkUsernameOrEmailDto.username },
          { email: checkUsernameOrEmailDto.email },
        ],
      },
    });
    if (user) {
      if (checkUsernameOrEmailDto.username) {
        throw new ForbiddenException('Username already taken');
      } else {
        throw new ForbiddenException('Email already taken');
      }
    }
    let message: string;
    if (checkUsernameOrEmailDto.username) {
      message = 'Username is available';
    } else {
      message = 'Email is available';
    }
    return { message };
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
  ): Promise<ResponseWithData<Tokens>> {
    const user = await this.prisma.user.findUnique({ where: { id: userId } });
    if (!user || !user.refreshTokenHash)
      throw new ForbiddenException('Access denied');

    const tokenMatches = this.verifyHash(user.refreshTokenHash, refreshToken);
    if (!tokenMatches) throw new ForbiddenException('Access denied.');

    const tokens = await this.getTokens(user.id, user.email, user.username);
    await this.updateRtHash(userId, tokens.refreshToken);
    return { message: 'Regenerated Tokens', data: tokens };
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
          expiresIn: '1 day', //15 min
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
