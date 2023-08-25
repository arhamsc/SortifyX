import { Injectable, NotFoundException } from '@nestjs/common';
import { UpdateUserDto } from './dto/update-user.dto';
import { PrismaService } from 'src/prisma';
import { CommonMessageResponse, ResponseWithData } from 'src/types';
import { UserResponse } from 'src/family/types';

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
      },
    });
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
      },
    });
    if (!user) throw new NotFoundException('User not registered with us.');
    return { message: `Got user data with userId: ${user.id}.`, data: user };
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
      },
    });
    if (!user) throw new NotFoundException('User not registered with us.');
    return {
      message: `Got user data with email: ${user.email}.`,
      data: user,
    };
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
