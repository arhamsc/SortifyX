import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UploadedFile,
  UseInterceptors,
  BadRequestException,
  ParseBoolPipe,
  Query,
} from '@nestjs/common';
import { FileInterceptor } from '@nestjs/platform-express';
import { DocumentsService } from './documents.service';
import { CreateDocumentDto } from './dto/create-document.dto';
import { UpdateDocumentDto } from './dto/update-document.dto';
import { FamilyActions, GetCurrentUser } from 'src/shared/decorators';
import { DocumentAuthor } from './decorators/document-author/document-author.decorator';
import { DocumentAction, FamilyAction } from 'src/shared/enums';
import { CheckHasFamily } from 'src/shared/decorators/check-has-family.decorator';

@Controller('documents')
@CheckHasFamily()
export class DocumentsController {
  constructor(private readonly documentsService: DocumentsService) {}

  @Post()
  @UseInterceptors(FileInterceptor('doc'))
  create(
    @GetCurrentUser('id') userId: string,
    @Body() createDocumentDto: CreateDocumentDto,
    @UploadedFile() file: Express.Multer.File,
  ) {
    if (!file) {
      throw new BadRequestException('Provide a document to upload.');
    }
    return this.documentsService.create(userId, createDocumentDto, file);
  }

  @Get()
  findAllMyDocs(@GetCurrentUser('id') userId: string) {
    return this.documentsService.findAllMyDocs(userId);
  }

  @Get('/family/:id') //id -> Family ID
  @FamilyActions(FamilyAction.ReadFamily)
  findAllFamilyDocs(@Param('id') familyId: string) {
    return this.documentsService.findAllFamilyDocs(familyId);
  }

  @Get(':id')
  @DocumentAuthor(DocumentAction.ReadDocument)
  findOne(@Param('id') id: string) {
    return this.documentsService.findOne(id);
  }

  @Patch(':id')
  @UseInterceptors(FileInterceptor('doc'))
  @DocumentAuthor(DocumentAction.UpdateDocument)
  update(
    @Param('id') id: string,
    @Body() updateDocumentDto: UpdateDocumentDto,
    @Query('updateDoc', ParseBoolPipe) updateDoc: boolean,
    @UploadedFile() file: Express.Multer.File,
  ) {
    return this.documentsService.update(id, updateDocumentDto, updateDoc, file);
  }

  @Delete(':id')
  @DocumentAuthor(DocumentAction.DeleteDocument)
  remove(@Param('id') id: string) {
    return this.documentsService.remove(id);
  }
}
