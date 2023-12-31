import { Inject, Injectable } from '@nestjs/common';
import { v2 as cloudinary } from 'cloudinary';
import { CloudinaryResponse } from './cloudinary-response';
import * as streamifier from 'streamifier';

@Injectable()
export class CloudinaryService {
  constructor(
    @Inject('CLOUDINARY_OPTIONS') private options: Record<string, any>,
  ) {}
  ///Pass public_id and set overwrite to true, together to overwrite.
  uploadFile(
    file: Express.Multer.File,
    subfolder: string,
    fileName?: string,
    overwrite?: boolean,
    public_id?: string,
  ): Promise<CloudinaryResponse> {
    return new Promise<CloudinaryResponse>((resolve, reject) => {
      const uploadStream = cloudinary.uploader.upload_stream(
        {
          folder: `SortifyX/${this.options.moduleFolder}/${subfolder}`,
          unique_filename: true,
          use_filename: true,
          filename_override: fileName ?? file.originalname,
          overwrite,
          public_id,
        },
        (error, result) => {
          // result.
          if (error) return reject(error);
          resolve(result!);
        },
      );

      streamifier.createReadStream(file.buffer).pipe(uploadStream);
    });
  }

  async uploadFiles(files: Express.Multer.File[], subfolder: string) {
    const fileResponses = await Promise.all(
      files.map(async (file): Promise<CloudinaryResponse> => {
        const res = await this.uploadFile(file, subfolder);
        return res;
      }),
    );
    return fileResponses;
  }

  async deleteFile(idOrPath: string): Promise<{ message: string }> {
    return await cloudinary.uploader.destroy(idOrPath, { invalidate: true });
  }

  async deleteFiles(paths: string[]) {
    return await cloudinary.api.delete_resources(paths, { invalidate: true });
  }

  async deleteEntireFolder(prefix: string) {
    return await cloudinary.api.delete_resources_by_prefix(prefix);
  }
}
