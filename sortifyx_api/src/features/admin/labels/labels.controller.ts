import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
  ParseEnumPipe,
} from '@nestjs/common';
import { LabelsService } from './labels.service';
import { CreateLabelDto } from './dto/create-label.dto';
import { UpdateLabelDto } from './dto/update-label.dto';
import { CheckHasFamily } from 'src/shared/decorators/check-has-family.decorator';
import { LabelType } from '@prisma/client';
import { GetCurrentUser } from 'src/shared/decorators';
import { AdminFeatureAuthor } from '../decorators/admin-feature-author/admin-feature-author.decorator';
import { AdminFeatureAction } from 'src/shared/enums';

@Controller('labels')
@CheckHasFamily()
export class LabelsController {
  constructor(private readonly labelsService: LabelsService) {}

  @Post()
  create(
    @GetCurrentUser('id') userId: string,
    @Body() createLabelDto: CreateLabelDto,
  ) {
    return this.labelsService.create(userId, createLabelDto);
  }

  @Get()
  findAll() {
    return this.labelsService.findAll();
  }

  @Get('/my')
  findMyTags(@GetCurrentUser('id') userId: string) {
    return this.labelsService.findMyLabels(userId);
  }

  @Get('/type/:type')
  findLabelByType(
    @Param('type', new ParseEnumPipe(LabelType)) type: LabelType,
  ) {
    return this.labelsService.findByLabelType(type);
  }

  @Get(':unique')
  findOne(@Param('unique') unique: string, @Query('using') using: string) {
    if (using === 'name') {
      return this.labelsService.findOneByName(unique);
    } else {
      return this.labelsService.findOne(unique);
    }
  }

  @Patch(':id')
  @AdminFeatureAuthor({
    forFeature: 'labels',
    roles: [AdminFeatureAction.UpdateAdminFeature],
  })
  update(@Param('id') id: string, @Body() updateLabelDto: UpdateLabelDto) {
    return this.labelsService.update(id, updateLabelDto);
  }

  @Delete(':id')
  @AdminFeatureAuthor({
    forFeature: 'labels',
    roles: [AdminFeatureAction.DeleteAdminFeature],
  })
  remove(@Param('id') id: string) {
    return this.labelsService.remove(id);
  }
}
