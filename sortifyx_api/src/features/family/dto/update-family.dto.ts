import { OmitType } from '@nestjs/mapped-types';
import { CreateFamilyDto } from './create-family.dto';
// import { IsOptional, IsUUID } from 'class-validator';

export class UpdateFamilyDto extends CreateFamilyDto {
  constructor() {
    super();
  }

  // @IsUUID()
  // @IsOptional()
  // familyMemberId?: string;
}
