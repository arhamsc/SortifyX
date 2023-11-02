import {
  CanActivate,
  ExecutionContext,
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { ADMIN_FEATURE_ACTION_KEY } from '../../decorators/admin-feature-author/admin-feature-author.decorator';
import { AdminFeatureAction } from 'src/shared/enums';
import { Reflector } from '@nestjs/core';
import { CaslAbilityFactory } from 'src/global/casl';
import { PrismaService } from 'src/global/prisma';
import { subject } from '@casl/ability';
import { Request } from 'express';

@Injectable()
export class AdminFeatureAuthorGuard implements CanActivate {
  constructor(
    private reflector: Reflector,
    private caslAbilityFactory: CaslAbilityFactory,
    private prisma: PrismaService,
  ) {}
  async canActivate(context: ExecutionContext): Promise<boolean> {
    const requiredActions = this.reflector.getAllAndOverride<
      AdminFeatureAction[]
    >(ADMIN_FEATURE_ACTION_KEY, [context.getHandler(), context.getClass()]);

    const forAdminFeature = this.reflector.getAllAndOverride<string>(
      'forAdminFeature',
      [context.getHandler(), context.getClass()],
    );

    if (!forAdminFeature) {
      throw new Error('Provide admin feature name.');
    }

    if (!requiredActions) return true;

    const { user, params } = context.switchToHttp().getRequest<Request>();

    const ability = this.caslAbilityFactory.createAdminFeatureForUser(
      user as any,
      forAdminFeature,
    );

    if (forAdminFeature === 'labels') {
      const label = await this.prisma.label.findUniqueOrThrow({
        where: { id: params.id },
      });
      // console.log({ label });
      const pass = requiredActions.every((action) =>
        ability.can(action, subject('Label', label)),
      );

      if (pass) return true;
      else throw new ForbiddenException("The label doesn't belong to you");
    }
    return false;
  }
}
