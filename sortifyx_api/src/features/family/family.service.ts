import { ForbiddenException, Injectable } from '@nestjs/common';
import { CreateFamilyDto } from './dto/create-family.dto';
import { UpdateFamilyDto } from './dto/update-family.dto';
import { Family } from '@prisma/client';
import { PrismaService } from 'src/global/prisma';
import { ResponseWithData } from 'src/types';
import { v4 as Uuidv4, v5 as Uuidv5, validate } from 'uuid';

//TODO: Implement approval required by family head for adding members
//TODO: Role based access
@Injectable()
export class FamilyService {
  constructor(private prisma: PrismaService) {}

  async create(
    familyHeadId: string,
    createFamilyDto: CreateFamilyDto,
  ): Promise<ResponseWithData<Partial<Family>>> {
    const familyCode = this.generateFamilyCode(createFamilyDto.familyName);

    const family = await this.prisma.family.create({
      data: {
        familyName: createFamilyDto.familyName,
        familyCode: familyCode,
        familyHeadId,
      },
      select: {
        familyCode: true,
        familyHeadId: true,
        familyHead: {
          select: {
            id: true,
            username: true,
            firstName: true,
            lastName: true,
            phone: true,
            email: true,
            isAdmin: true,
          },
        },
        familyName: true,
        id: true,
      },
    });

    return {
      message: 'Welcome to SortifyX, keep your documents safe with us.',
      data: family,
    };
  }

  async findAll(): Promise<Family[]> {
    return await this.prisma.family.findMany({});
  }

  async findOne(id: string): Promise<Family> {
    const family = await this.prisma.family.findUniqueOrThrow({
      where: { id },
      include: {
        familyMembers: {
          select: {
            id: true,
            firstName: true,
            lastName: true,
            email: true,
            username: true,
            phone: true,
            isAdmin: true,
          },
        },
        familyHead: {
          select: {
            id: true,
            username: true,
            firstName: true,
            lastName: true,
            phone: true,
            email: true,
            isAdmin: true,
          },
        },
      },
    });
    return family;
  }

  async getMyFamilies(
    userId: string,
  ): Promise<ResponseWithData<Partial<Family>[]>> {
    const families = await this.prisma.family.findMany({
      where: {
        OR: [
          { familyHeadId: userId },
          { familyMembers: { some: { id: userId } } },
        ],
      },
      select: {
        familyCode: true,
        familyHeadId: true,
        familyHead: {
          select: {
            id: true,
            username: true,
            firstName: true,
            lastName: true,
            phone: true,
            email: true,
            isAdmin: true,
          },
        },
        familyName: true,
        id: true,
      },
    });
    return {
      message: `You are a part of ${families.length} families`,
      data: families,
    };
  }

  async update(
    id: string,
    updateFamilyDto: UpdateFamilyDto,
  ): Promise<ResponseWithData<Family>> {
    const family = await this.prisma.family.update({
      where: { id },
      data: { ...updateFamilyDto },
      include: {
        familyMembers: {
          select: {
            id: true,
            firstName: true,
            lastName: true,
            email: true,
            username: true,
            phone: true,
            isAdmin: true,
          },
        },
        familyHead: {
          select: {
            id: true,
            username: true,
            firstName: true,
            lastName: true,
            phone: true,
            email: true,
            isAdmin: true,
          },
        },
      },
    });
    return {
      message: 'Updated family information successfully.',
      data: family,
    };
  }

  async addFamilyMember(
    familyCode: string,
    userId: string,
  ): Promise<ResponseWithData<Partial<Family>>> {
    const family = await this.prisma.family.findUnique({
      where: {
        familyCode,
        OR: [
          {
            familyHeadId: userId,
          },
          {
            familyMembers: { some: { id: userId } },
          },
        ],
      },
    });
    if (family)
      throw new ForbiddenException(
        `You are already a part of ${family.familyName} family.`,
      );

    const updatedFamily = await this.prisma.family.update({
      where: { familyCode: familyCode },
      data: {
        familyMembers: {
          connect: { id: userId },
        },
      },
      select: {
        familyCode: true,
        familyHeadId: true,
        familyHead: {
          select: {
            id: true,
            username: true,
            firstName: true,
            lastName: true,
            phone: true,
            email: true,
            isAdmin: true,
          },
        },
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

  generateNamespaceUUID(): string {
    const uuid = Uuidv4();
    return uuid;
  }

  generateFamilyCode(prefix?: string): string {
    const namespace = this.generateNamespaceUUID(); // Example namespace
    const name = prefix || ''; // Use an empty string if the prefix is null
    const id = Uuidv5(name, namespace); // Generate a new UUID v5 using the namespace and name

    if (!validate(id)) {
      throw new Error('Invalid UUID');
    }

    const code = id.replace(/-/g, '').substring(0, 6).toUpperCase(); // Convert the UUID to a 6-character code
    return code;
  }
}
