import {
  CanActivate,
  ExecutionContext,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { Reflector } from '@nestjs/core';
import { JwtService } from '@nestjs/jwt';
import { AuthGuard } from '@nestjs/passport';
import { JwtPayload, TokenExpiredError } from 'jsonwebtoken';
import { Observable, catchError, from, map, of } from 'rxjs';

@Injectable()
export class AccessTokenGuard
  extends AuthGuard('jwt-access')
  implements CanActivate
{
  constructor(
    private reflector: Reflector,
    private jwt: JwtService,
    private config: ConfigService,
  ) {
    super();
  }
  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    const isPublic = this.reflector.getAllAndOverride('isPublic', [
      context.getHandler(),
      context.getClass(),
    ]);

    if (isPublic) return true; //Pass all traffic
    const req = context.switchToHttp().getRequest();

    const accessToken =
      req.get('authorization')?.replace('Bearer', '').trim() ?? '';

    const aTObv: any = from(
      this.jwt.verifyAsync(accessToken, {
        secret: this.config.get('ACCESS_TOKEN_SECRET'),
      }),
    ).pipe(
      map((ele: JwtPayload) => {
        if (ele.username) {
          return super.canActivate(context);
        }
        return of(false);
      }),
      catchError((e) => {
        if (e instanceof TokenExpiredError) {
          throw new UnauthorizedException('Token expired');
        }
        return of(false);
      }),
    );
    return aTObv;
  }
}
