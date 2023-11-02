import { Module } from '@nestjs/common';
import { DocumentsService } from './documents.service';
import { DocumentsController } from './documents.controller';
import { CloudinaryModule } from 'src/dynamic_modules/cloudinary/cloudinary.module';

@Module({
  imports: [
    CloudinaryModule.register({
      moduleFolder: 'documents',
    }),
  ],
  controllers: [DocumentsController],
  providers: [DocumentsService],
})
export class DocumentsModule {}
