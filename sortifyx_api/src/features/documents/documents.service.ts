import { Injectable, InternalServerErrorException } from '@nestjs/common';
import { CreateDocumentDto } from './dto/create-document.dto';
import { UpdateDocumentDto } from './dto/update-document.dto';
import { PrismaService } from 'src/global/prisma';
import { CloudinaryService } from 'src/dynamic_modules/cloudinary/cloudinary.service';
import { CommonMessageResponse, ResponseWithData } from 'src/types';
import { Document } from '@prisma/client';

@Injectable()
export class DocumentsService {
  constructor(
    private prisma: PrismaService,
    private cloudinary: CloudinaryService,
  ) {}

  async create(
    userId: string,
    createDocumentDto: CreateDocumentDto,
    docFile: Express.Multer.File,
  ): Promise<CommonMessageResponse> {
    const upload = await this.cloudinary.uploadFile(
      docFile,
      '',
      createDocumentDto.fileName,
    );
    if (!upload) {
      throw new InternalServerErrorException(
        'Could not upload the document, try again.',
      );
    }
    const file = await this.prisma.file.create({
      data: {
        filePublicID: upload.public_id,
        fileAssetID: upload.asset_id,
        fileOriginalName: upload.original_filename,
        fileDownloadUrl: upload.secure_url,
        fileFolder: upload.folder,
      },
      select: { id: true },
    });
    const doc = await this.prisma.document.create({
      data: {
        ...createDocumentDto,
        uploadedById: userId,
        fileId: file.id,
      },
    });
    return { message: `Document ${doc.fileName} has been uploaded.` };
  }

  async findAllMyDocs(userId: string): Promise<ResponseWithData<Document[]>> {
    const docs = await this.prisma.document.findMany({
      where: {
        uploadedById: userId,
      },
    });
    return {
      message: `There are ${docs.length} documents on SortifyX.`,
      data: docs,
    };
  }

  async findAllFamilyDocs(
    familyId: string,
  ): Promise<ResponseWithData<Document[]>> {
    //Will find documents which are visible to all family members
    const docs = await this.prisma.document.findMany({
      where: {
        familyId,
        familyAccess: 'ALL',
      },
    });
    return {
      message: `There are ${docs.length} documents in family.`,
      data: docs,
    };
  }

  async findOne(id: string): Promise<ResponseWithData<Document>> {
    const doc = await this.prisma.document.findUniqueOrThrow({ where: { id } });
    return { message: `Document ${doc.fileName} fetched.`, data: doc };
  }

  async update(
    id: string,
    updateDocumentDto: UpdateDocumentDto,
    updateDocument?: boolean,
    doc?: Express.Multer.File,
  ): Promise<ResponseWithData<Document>> {
    if (updateDocument !== undefined && updateDocument && doc !== undefined) {
      const document = await this.prisma.document.findUniqueOrThrow({
        where: { id },
        include: {
          file: {
            select: {
              filePublicID: true,
              id: true,
            },
          },
        },
      });
      const upload = await this.cloudinary.uploadFile(
        doc,
        '',
        updateDocumentDto.fileName ?? document.fileName,
        true,
        document.file.filePublicID,
      );

      await this.prisma.file.update({
        where: {
          id: document.file.id,
        },
        data: {
          filePublicID: upload.public_id,
          fileAssetID: upload.asset_id,
          fileOriginalName: upload.original_filename,
          fileDownloadUrl: upload.secure_url,
          fileFolder: upload.folder,
        },
      });

      const updatedDoc = await this.prisma.document.update({
        where: { id },
        data: { ...updateDocumentDto },
      });

      return {
        message: `Document ${updatedDoc.fileName} updated.`,
        data: updatedDoc,
      };
    }

    //If not required to overwrite the document
    const updatedDoc = await this.prisma.document.update({
      where: { id },
      data: { ...updateDocumentDto },
    });
    return {
      message: `Document ${updatedDoc.fileName} updated.`,
      data: updatedDoc,
    };
  }

  async remove(id: string): Promise<CommonMessageResponse> {
    const document = await this.prisma.document.findUniqueOrThrow({
      where: { id },
      include: {
        file: true,
      },
    });
    await this.cloudinary.deleteFile(document.file.filePublicID);

    await this.prisma.document.delete({ where: { id } });
    return {
      message: `Deleted ${document.fileName} successfully.`,
    };
  }
}
