import { IsNotEmpty, IsString, Length } from 'class-validator';

export class CreateFamilyDto {
  @IsString()
  @IsNotEmpty()
  @Length(5)
  familyName: string;

  // @IsString()
  // @IsNotEmpty()
  // familyCode: string;

  // @IsUUID()
  // @IsNotEmpty()
  // familyHeadId: string;
}
