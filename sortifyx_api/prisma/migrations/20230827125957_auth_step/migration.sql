-- CreateEnum
CREATE TYPE "AuthStep" AS ENUM ('NONE', 'USER', 'FAMILY', 'FINISHED');

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "authStep" "AuthStep" NOT NULL DEFAULT 'NONE';
