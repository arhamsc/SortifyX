import {
  Body,
  Controller,
  HttpCode,
  HttpStatus,
  Post,
  UseGuards,
} from '@nestjs/common';
import { AuthService } from './auth.service';
import { AuthLoginDto, AuthSignUpDto, CheckUsernameOrEmailDto } from './dto';
import { GetCurrentUser, Public } from 'src/shared/decorators';
import { User } from '@prisma/client';
import { RefreshTokenGuard } from 'src/shared/guards';

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('/signup')
  @Public()
  @HttpCode(HttpStatus.CREATED)
  signup(@Body() signUpDto: AuthSignUpDto) {
    return this.authService.signUpLocal(signUpDto);
  }

  @Post('/login')
  @Public()
  @HttpCode(HttpStatus.OK)
  login(@Body() loginDto: AuthLoginDto) {
    return this.authService.loginLocal(loginDto);
  }

  //TODO: Implement async validator in front end to check this
  @Post('/check-username-or-email')
  @Public()
  checkUsernameOrEmail(
    @Body() checkUsernameOrEmailDto: CheckUsernameOrEmailDto,
  ) {
    return this.authService.checkUsernameOrEmail(checkUsernameOrEmailDto);
  }

  @Post('logout')
  @HttpCode(HttpStatus.OK)
  logout(@GetCurrentUser('id') userId: string) {
    return this.authService.logout(userId);
  }

  @Public()
  @UseGuards(RefreshTokenGuard)
  @Post('refresh')
  @HttpCode(HttpStatus.OK)
  refreshTokens(
    @GetCurrentUser('id') userId: string,
    @GetCurrentUser('refreshToken') refreshToken: string,
  ) {
    // const user = req.user;
    return this.authService.refreshTokenGeneration(userId, refreshToken);
  }
}
