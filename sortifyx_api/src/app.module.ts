import { Module } from '@nestjs/common';
import { PrismaService } from './prisma/prisma.service';
import { PrismaModule } from './prisma/prisma.module';
import { ConfigModule } from '@nestjs/config';
import { AuthModule } from './auth/auth.module';
import { argonOptions } from './config';
import { AccessTokenStrategy, RefreshTokenStrategy } from './auth/strategies';
import { APP_GUARD } from '@nestjs/core';
import { AccessTokenGuard } from './shared/guards';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true, load: [argonOptions] }),
    PrismaModule,
    AuthModule,
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
