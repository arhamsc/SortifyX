import { OmitType } from '@nestjs/mapped-types';
import { CreateFamilyDto } from './create-family.dto';
// import { IsOptional, IsUUID } from 'class-validator';

export class UpdateFamilyDto extends OmitType(CreateFamilyDto, ['familyCode']) {
  constructor() {
    super();
  }

  // @IsUUID()
  // @IsOptional()
  // familyMemberId?: string;
}
