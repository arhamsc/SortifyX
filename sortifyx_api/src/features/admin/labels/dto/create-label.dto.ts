import { LabelType } from '@prisma/client';
import {
  IsEnum,
  IsNotEmpty,
  IsOptional,
  IsString,
  IsUUID,
} from 'class-validator';

export class CreateLabelDto {
  @IsEnum(LabelType)
  @IsNotEmpty()
  labelType: LabelType;

  @IsString()
  @IsNotEmpty()
  name: string;

  @IsUUID()
  @IsOptional()
  familyId: string;
}
