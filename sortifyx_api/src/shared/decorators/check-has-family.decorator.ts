import { UseGuards } from '@nestjs/common';
import { CheckHasFamilyGuard } from '../guards/check-has-family/check-has-family.guard';

export const CheckHasFamily = () => UseGuards(CheckHasFamilyGuard);
