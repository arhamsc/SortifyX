/*
  Warnings:

  - You are about to drop the `Family` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Family" DROP CONSTRAINT "Family_familyHeadId_fkey";

-- DropForeignKey
ALTER TABLE "_AsFamilyMember" DROP CONSTRAINT "_AsFamilyMember_A_fkey";

-- DropForeignKey
ALTER TABLE "_AsFamilyMember" DROP CONSTRAINT "_AsFamilyMember_B_fkey";

-- DropTable
DROP TABLE "Family";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "passwordHash" TEXT NOT NULL,
    "firstName" TEXT,
    "lastName" TEXT,
    "fcmToken" TEXT,
    "refreshTokenHash" TEXT,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "families" (
    "id" TEXT NOT NULL,
    "familyHeadId" TEXT NOT NULL,
    "familyName" TEXT NOT NULL,
    "familyCode" TEXT NOT NULL,

    CONSTRAINT "families_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_username_key" ON "users"("username");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "families_familyHeadId_key" ON "families"("familyHeadId");

-- CreateIndex
CREATE UNIQUE INDEX "families_familyCode_key" ON "families"("familyCode");

-- AddForeignKey
ALTER TABLE "families" ADD CONSTRAINT "families_familyHeadId_fkey" FOREIGN KEY ("familyHeadId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AsFamilyMember" ADD CONSTRAINT "_AsFamilyMember_A_fkey" FOREIGN KEY ("A") REFERENCES "families"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AsFamilyMember" ADD CONSTRAINT "_AsFamilyMember_B_fkey" FOREIGN KEY ("B") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
