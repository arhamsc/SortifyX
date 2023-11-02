import { SetMetadata, UseGuards, applyDecorators } from '@nestjs/common';
import { DocumentAction } from 'src/shared/enums';
import { DocumentAuthorGuard } from '../../guards/document-author/document-author.guard';

export const DOCUMENT_ACTION_KEY = 'document-role';
export const DocumentAuthor = (...args: DocumentAction[]) =>
  applyDecorators(
    SetMetadata(DOCUMENT_ACTION_KEY, args),
    UseGuards(DocumentAuthorGuard),
  );
