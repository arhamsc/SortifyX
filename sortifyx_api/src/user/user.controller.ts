import {
  Controller,
  Get,
  Body,
  Patch,
  Param,
  Delete,
  Query,
  UseGuards,
  BadRequestException,
} from '@nestjs/common';
import { UserService } from './user.service';
import { UpdateUserDto } from './dto/update-user.dto';
import { IsAdmin } from 'src/shared/decorators';
import { UserGuard } from './guards';

@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) {}
  //No Create user,as it is done when signing up

  @Get()
  @IsAdmin()
  findAll() {
    return this.userService.findAll();
  }

  @Get(':unique')
  findOne(
    @Param('unique') unique: string,
    @Query('using') using: 'id' | 'email' | 'username',
  ) {
    if (!using)
      throw new BadRequestException(
        'Please specify using parameter: id, email, username',
      );
    if (using == 'email') return this.userService.findOneByEmail(unique);
    if (using == 'id') return this.userService.findOneById(unique);
    if (using == 'username') return this.userService.findOneByUsername(unique);
  }

  @Patch(':id')
  @UseGuards(UserGuard)
  update(@Param('id') id: string, @Body() updateUserDto: UpdateUserDto) {
    return this.userService.update(id, updateUserDto);
  }

  @Patch(':id/fcmToken')
  @UseGuards(UserGuard)
  updateFCMToken(@Param('id') id: string, @Body('fcmToken') fcmToken: string) {
    return this.userService.updateUserFCMToken(fcmToken, id);
  }

  @Delete(':id')
  @UseGuards(UserGuard)
  remove(@Param('id') id: string) {
    return this.userService.remove(id);
  }
}
