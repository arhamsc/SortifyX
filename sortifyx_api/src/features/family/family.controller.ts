import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { FamilyService } from './family.service';
import { CreateFamilyDto } from './dto/create-family.dto';
import { UpdateFamilyDto } from './dto/update-family.dto';
import {
  CheckFamilyExists,
  FamilyActions,
  GetCurrentUser,
  IsAdmin,
} from 'src/shared/decorators';
import { FamilyAction } from 'src/shared/enums';

@Controller('family')
export class FamilyController {
  constructor(private readonly familyService: FamilyService) {}

  @Post()
  create(
    @GetCurrentUser('id') userId: string,
    @Body() createFamilyDto: CreateFamilyDto,
  ) {
    return this.familyService.create(userId, createFamilyDto);
  }

  @Get()
  @IsAdmin()
  @FamilyActions(FamilyAction.ManageFamily) //Admin or Family Head also authorizes them
  findAll() {
    return this.familyService.findAll();
  }

  @Get('/my')
  getMyFamilies(@GetCurrentUser('id') userId: string) {
    return this.familyService.getMyFamilies(userId);
  }

  @Get(':id')
  @CheckFamilyExists()
  @FamilyActions(FamilyAction.ReadFamily)
  findOne(@Param('id') id: string) {
    return this.familyService.findOne(id);
  }

  @Patch(':id')
  @CheckFamilyExists()
  @FamilyActions(FamilyAction.ManageFamily)
  update(@Param('id') id: string, @Body() updateFamilyDto: UpdateFamilyDto) {
    return this.familyService.update(id, updateFamilyDto);
  }

  //TODO: Make only familyHead to authorize family joins in future
  @Patch(':familyCode/addMember')
  @CheckFamilyExists()
  addFamilyMember(
    @Param('familyCode') code: string,
    @GetCurrentUser('id') userId: string,
  ) {
    return this.familyService.addFamilyMember(code, userId);
  }

  @Delete(':id')
  @CheckFamilyExists()
  @FamilyActions(FamilyAction.ManageFamily)
  remove(@Param('id') id: string) {
    return this.familyService.remove(id);
  }
}
