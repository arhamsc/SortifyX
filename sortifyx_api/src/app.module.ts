import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { APP_GUARD } from '@nestjs/core';
import { AuthModule } from './features/auth/auth.module';
import {
  AccessTokenStrategy,
  RefreshTokenStrategy,
} from './features/auth/strategies';
import { CaslModule } from './global/casl';
import { argonOptions } from './config';
import { FamilyModule } from './features/family';
import { PrismaModule } from './global/prisma/prisma.module';
import { PrismaService } from './global/prisma/prisma.service';
import { AccessTokenGuard } from './shared/guards';
import { UserModule } from './features/user/user.module';
import { JwtModule } from '@nestjs/jwt';
import { CloudinaryModule } from './dynamic_modules/cloudinary/cloudinary.module';
import { DocumentsModule } from './features/documents/documents.module';
import { LabelsModule } from './features/admin/labels/labels.module';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true, load: [argonOptions] }),
    PrismaModule,
    AuthModule,
    FamilyModule,
    CaslModule,
    UserModule,
    JwtModule.register({}),
    CloudinaryModule,
    DocumentsModule,
    LabelsModule,
  ],
  controllers: [],
  providers: [
    PrismaService,
    AccessTokenStrategy,
    RefreshTokenStrategy,
    {
      provide: APP_GUARD,
      useClass: AccessTokenGuard,
    },
  ],
})
export class AppModule {}
