import {
  CanActivate,
  ExecutionContext,
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { CaslAbilityFactory } from 'src/global/casl';
import { PrismaService } from 'src/global/prisma';
import { DocumentAction } from 'src/shared/enums';
import { DOCUMENT_ACTION_KEY } from '../../decorators/document-author/document-author.decorator';
import { Request } from 'express';
import { subject } from '@casl/ability';

@Injectable()
export class DocumentAuthorGuard implements CanActivate {
  constructor(
    private reflector: Reflector,
    private caslAbilityFactory: CaslAbilityFactory,
    private prisma: PrismaService,
  ) {}
  async canActivate(context: ExecutionContext): Promise<boolean> {
    const requiredActions = this.reflector.getAllAndOverride<DocumentAction[]>(
      DOCUMENT_ACTION_KEY,
      [context.getHandler(), context.getClass()],
    );

    if (!requiredActions) return true;

    const { user, params } = context.switchToHttp().getRequest<Request>();

    const ability = this.caslAbilityFactory.createDocumentRoleForUser(
      user as any,
    );

    const document = await this.prisma.document.findUniqueOrThrow({
      where: { id: params.id },
    });

    const pass = requiredActions.every((action) =>
      ability.can(action, subject('Document', document)),
    );

    if (pass) return true;
    else throw new ForbiddenException("The document doesn't belong to you");
  }
}
