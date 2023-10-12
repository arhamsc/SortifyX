import {
  CanActivate,
  ExecutionContext,
  ForbiddenException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { PrismaService } from 'src/global/prisma';

@Injectable()
export class UserGuard implements CanActivate {
  constructor(private prisma: PrismaService) {}
  async canActivate(context: ExecutionContext): Promise<boolean> {
    const { user, params } = context.switchToHttp().getRequest();

    const u = await this.prisma.user.findFirst({
      where: {
        OR: [
          { id: params.id ?? '' },
          { username: params.username ?? '' },
          { email: params.email ?? '' },
          { id: params.unique ?? '' },
          { username: params.unique ?? '' },
          { email: params.unique ?? '' },
        ],
      },
    });
    if (!u) throw new NotFoundException('User not registered with us.');
    if (user.id === u.id || user.isAdmin) return true;
    throw new ForbiddenException('You are not allowed.');
  }
}
