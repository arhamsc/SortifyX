import { ConfigService } from '@nestjs/config';
import { PassportStrategy } from '@nestjs/passport';
import { Request } from 'express';
import { ExtractJwt, Strategy } from 'passport-jwt';
import { JwtPayload, JwtPayloadWithRt } from '../types';
import { Injectable } from '@nestjs/common';

@Injectable()
export class RefreshTokenStrategy extends PassportStrategy(
  Strategy,
  'jwt-refresh',
) {
  constructor(private config: ConfigService) {
    //Options for Strategy
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      secretOrKey: config.get('REFRESH_TOKEN_SECRET'),
      passReqToCallback: true, //passes the tokens to request
    });
  }

  ///This method will not return user as it is just for refresh token.
  validate(req: Request, payload: JwtPayload): JwtPayloadWithRt {
    //Sending RT directly instead of AT in the bearer.
    const refreshToken =
      req.get('authorization')?.replace('Bearer', '').trim() ?? '';
    return { ...payload, refreshToken };
  }
}
