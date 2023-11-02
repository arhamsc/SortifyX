import {
  CanActivate,
  ExecutionContext,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { Family, User } from '@prisma/client';
import { Request } from 'express';
import { Observable, catchError, from, map } from 'rxjs';
import { PrismaService } from 'src/global/prisma';

@Injectable()
export class CheckHasFamilyGuard implements CanActivate {
  constructor(
    private prisma: PrismaService,
    private reflector: Reflector,
  ) {}
  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    const isPublic = this.reflector.getAllAndOverride('isPublic', [
      context.getHandler(),
      context.getClass(),
    ]);

    const { user } = context.switchToHttp().getRequest<Request>();
    if (isPublic || (user ?? ({} as any)).isAdmin) return true; //Pass all traffic

    const cHFGObv = from(
      this.prisma.family.findFirst({
        where: {
          OR: [
            { familyHeadId: (user as User).id },
            {
              familyMembers: { some: { id: (user as User).id } },
            },
          ],
        },
      }),
    ).pipe(
      map((family: Family) => {
        if (family) {
          return true;
        }
        throw 'no-family';
      }),
      catchError(() => {
        throw new UnauthorizedException(
          'You are not registered in any family, please register or join to continue.',
        );
      }),
    );
    return cHFGObv;
  }
}
