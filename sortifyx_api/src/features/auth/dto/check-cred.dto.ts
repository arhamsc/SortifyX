import { PartialType } from '@nestjs/mapped-types';
import { AuthSignUpDto } from './auth.dto';

export class CheckUsernameOrEmailDto extends PartialType(AuthSignUpDto) {}
