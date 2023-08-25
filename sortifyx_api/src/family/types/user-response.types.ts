import { User } from '@prisma/client';

export type UserResponse = Omit<
  User,
  'refreshTokenHash' | 'passwordHash' | 'createdAt' | 'updatedAt'
>;
