import { subject } from '@casl/ability';
import {
  CanActivate,
  ExecutionContext,
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { CaslAbilityFactory } from 'src/global/casl';
import { PrismaService } from 'src/global/prisma';
import { ACTIONS_KEY } from 'src/shared/decorators';
import { FamilyAction } from 'src/shared/enums';

@Injectable()
export class FamilyGuard implements CanActivate {
  constructor(
    private reflector: Reflector,
    private caslAbilityFactory: CaslAbilityFactory,
    private prisma: PrismaService,
  ) {}

  async canActivate(context: ExecutionContext): Promise<boolean> {
    const requiredActions = this.reflector.getAllAndOverride<FamilyAction[]>(
      ACTIONS_KEY,
      [context.getHandler(), context.getClass()],
    );

    if (!requiredActions) return true;
    //TODO: Add extra other actions later. (when uploading document he should be a member)

    const { user, params } = context.switchToHttp().getRequest();
    const family = await this.prisma.family.findFirst({
      where: {
        OR: [{ familyCode: params.familyCode ?? '' }, { id: params.id ?? '' }],
      },
      include: { familyMembers: { select: { id: true } } },
    });

    // throw new ForbiddenException(family);
    const ability = this.caslAbilityFactory.createForUser(user);
    const pass =
      requiredActions.every((action) =>
        ability.can(action, subject('Family', family!)),
      ) || user.isAdmin;

    if (pass) {
      return true;
    } else {
      throw new ForbiddenException('You are not authorized.');
    }
  }
}
