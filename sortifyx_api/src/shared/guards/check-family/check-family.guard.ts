import {
  CanActivate,
  ExecutionContext,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { Request } from 'express';
import { PrismaService } from 'src/global/prisma';

@Injectable()
export class CheckFamilyGuard implements CanActivate {
  constructor(private prisma: PrismaService) {}

  async canActivate(context: ExecutionContext): Promise<boolean> {
    const { params } = context.switchToHttp().getRequest<Request>();

    //* IMP: `id` should be there in the params or else guard won't work.
    const family = await this.prisma.family.findFirst({
      where: {
        OR: [{ familyCode: params.familyCode ?? '' }, { id: params.id ?? '' }],
      },
    });
    // console.log({ params: req.params, family });
    if (family) {
      return true;
    } else {
      throw new NotFoundException("Family doesn't exist with us.");
    }
  }
}
