import { SetMetadata, UseGuards, applyDecorators } from '@nestjs/common';
import { FamilyAction } from '../enums';
import { FamilyGuard } from '../guards';

export const ACTIONS_KEY = 'roles';
export const FamilyActions = (...actions: FamilyAction[]) =>
  applyDecorators(SetMetadata(ACTIONS_KEY, actions), UseGuards(FamilyGuard));
