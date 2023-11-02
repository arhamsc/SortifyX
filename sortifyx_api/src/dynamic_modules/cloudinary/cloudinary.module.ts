import { DynamicModule, Module } from '@nestjs/common';
import { CloudinaryService } from './cloudinary.service';
import { CloudinaryProvider } from './cloudinary/cloudinary.provider';

@Module({
  // providers: [CloudinaryService, CloudinaryProvider],
  // exports:
})
export class CloudinaryModule {
  static register(options: Record<string, any>): DynamicModule {
    return {
      module: CloudinaryModule,
      providers: [
        {
          provide: 'CLOUDINARY_OPTIONS',
          useValue: options,
        },
        CloudinaryService,
        CloudinaryProvider,
      ],
      exports: [CloudinaryService, CloudinaryProvider],
    };
  }
}
