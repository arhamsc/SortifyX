import { UseGuards } from '@nestjs/common';
import { CheckFamilyGuard } from '../guards';

export const CheckFamilyExists = () => UseGuards(CheckFamilyGuard);
