import { FamilyAccess } from '@prisma/client';
import {
  IsEnum,
  IsNotEmpty,
  IsOptional,
  IsString,
  IsUUID,
} from 'class-validator';

export class CreateDocumentDto {
  @IsNotEmpty()
  @IsString()
  fileName: string;

  @IsOptional()
  @IsUUID()
  forMemberId?: string;

  @IsOptional()
  @IsUUID()
  familyId: string;

  @IsNotEmpty()
  @IsEnum(FamilyAccess)
  familyAccess: FamilyAccess;

  @IsNotEmpty()
  @IsUUID()
  labelId: string;

  @IsOptional()
  @IsString()
  location?: string;
}
