import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateFamilyDto } from './dto/create-family.dto';
import { UpdateFamilyDto } from './dto/update-family.dto';
import { Family } from '@prisma/client';
import { PrismaService } from 'src/prisma';
import { CommonMessageResponse, ResponseWithData } from 'src/types';
import { CaslAbilityFactory } from 'src/casl';

//TODO: Implement approval required by family head for adding members
//TODO: Role based access
@Injectable()
export class FamilyService {
  constructor(
    private prisma: PrismaService,
    private casl: CaslAbilityFactory,
  ) {}

  async create(
    familyHeadId: string,
    createFamilyDto: CreateFamilyDto,
  ): Promise<Family | CommonMessageResponse> {
    await this.prisma.family.create({
      data: {
        familyName: createFamilyDto.familyName,
        familyCode: createFamilyDto.familyCode,
        familyHeadId,
      },
    });
    return {
      message: 'Welcome to SortifyX, keep your documents safe with us.',
    };
  }

  async findAll(): Promise<Family[]> {
    return await this.prisma.family.findMany({});
  }

  async findOne(id: string): Promise<Family> {
    const family = await this.prisma.family.findUniqueOrThrow({
      where: { id },
      include: { familyMembers: { select: { id: true } } },
    });
    return family;
  }

  async update(
    id: string,
    updateFamilyDto: UpdateFamilyDto,
  ): Promise<ResponseWithData<Family>> {
    const family = await this.prisma.family.update({
      where: { id },
      data: { ...updateFamilyDto },
    });
    if (!family)
      //This is not possible right now as prisma doesn't return null for family not found
      throw new NotFoundException('Family is not registered with us');
    return {
      message: 'Updated family information successfully.',
      data: family,
    };
  }

  async addFamilyMember(
    familyCode: string,
    userId: string,
  ): Promise<ResponseWithData<Partial<Family>>> {
    const family = await this.prisma.family.findUniqueOrThrow({
      where: { familyCode },
    });
    if (!family)
      throw new NotFoundException('Family is not registered with us');

    const updatedFamily = await this.prisma.family.update({
      where: { id: family.id },
      data: {
        familyMembers: {
          connect: { id: userId },
        },
      },
      select: {
        familyCode: true,
        familyHeadId: true,
        familyName: true,
        id: true,
      },
    });
    return {
      message: `You are now a part of ${updatedFamily.familyName}, enjoy.`,
      data: updatedFamily,
    };
  }

  async remove(id: string): Promise<ResponseWithData<Family>> {
    await this.prisma.family.delete({ where: { id } });
    return { message: 'Deleted the family.' };
  }
}
