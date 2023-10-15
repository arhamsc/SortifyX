import { Injectable, NotFoundException } from '@nestjs/common';
import { UpdateUserDto } from './dto/update-user.dto';
import { PrismaService } from 'src/global/prisma';
import { CommonMessageResponse, ResponseWithData } from 'src/types';
import { UserResponse } from 'src/features/family/types';

@Injectable()
export class UserService {
  constructor(private prisma: PrismaService) {}

  async findAll(): Promise<ResponseWithData<UserResponse[]>> {
    const users = await this.prisma.user.findMany({
      select: {
        email: true,
        fcmToken: true,
        firstName: true,
        lastName: true,
        username: true,
        id: true,
        isAdmin: true,
        authStep: true,
        phone: true,
      },
    });
    if (users.length <= 0) {
      throw new NotFoundException('No users found');
    }
    return { message: 'Got all the users.', data: users };
  }

  async findOneById(id: string): Promise<ResponseWithData<UserResponse>> {
    const user = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
      select: {
        email: true,
        fcmToken: true,
        firstName: true,
        lastName: true,
        username: true,
        id: true,
        isAdmin: true,
        authStep: true,
        phone: true,
      },
    });
    if (!user) throw new NotFoundException('User not registered with us.');
    return {
      message: `Got user data of ${user.firstName} ${user.lastName}.`,
      data: user,
    };
  }

  async findOneByUsername(
    username: string,
  ): Promise<ResponseWithData<UserResponse>> {
    const user = await this.prisma.user.findUnique({
      where: {
        username: username,
      },
      select: {
        email: true,
        fcmToken: true,
        firstName: true,
        lastName: true,
        username: true,
        id: true,
        isAdmin: true,
        authStep: true,
        phone: true,
      },
    });
    if (!user) throw new NotFoundException('User not registered with us.');
    return {
      message: `Got user data with username: ${user.username}.`,
      data: user,
    };
  }

  async findOneByEmail(email: string): Promise<ResponseWithData<UserResponse>> {
    const user = await this.prisma.user.findUnique({
      where: {
        email: email,
      },
      select: {
        email: true,
        fcmToken: true,
        firstName: true,
        lastName: true,
        username: true,
        id: true,
        isAdmin: true,
        authStep: true,
        phone: true,
      },
    });
    if (!user) throw new NotFoundException('User not registered with us.');
    return {
      message: `Got user data with email: ${user.email}.`,
      data: user,
    };
  }

  async checkUserHasFamily(userId: string): Promise<ResponseWithData<boolean>> {
    const familyCount = await this.prisma.family.count({
      where: {
        OR: [
          { familyHeadId: userId },
          {
            familyMembers: { some: { id: userId } },
          },
        ],
      },
    });
    if (familyCount > 0) {
      return {
        message: `You are a part of ${
          familyCount + ' ' + (familyCount == 1 ? 'family' : 'families')
        }.`,
        data: true,
      };
    } else {
      return {
        message:
          'You are not a part of any family, please create a family or join one to continue.',
        data: false,
      };
    }
  }

  async update(
    id: string,
    updateUserDto: UpdateUserDto,
  ): Promise<ResponseWithData<UserResponse>> {
    const user = await this.prisma.user.update({
      where: { id },
      data: { ...updateUserDto },
      select: {
        email: true,
        fcmToken: true,
        firstName: true,
        lastName: true,
        username: true,
        id: true,
        isAdmin: true,
        authStep: true,
        phone: true,
      },
    });
    return { message: 'Updated user.', data: user };
  }

  async updateUserFCMToken(
    fcmToken: string,
    id: string,
  ): Promise<CommonMessageResponse> {
    await this.prisma.user.update({ where: { id }, data: { fcmToken } });
    return { message: 'Updated fcm token.' };
  }

  async remove(id: string): Promise<CommonMessageResponse> {
    await this.prisma.user.delete({ where: { id } });
    return { message: 'Deleted user successfully.' };
  }
}
