import { Injectable } from '@nestjs/common';
import { CreateLabelDto } from './dto/create-label.dto';
import { UpdateLabelDto } from './dto/update-label.dto';
import { CommonMessageResponse, ResponseWithData } from 'src/types';
import { PrismaService } from 'src/global/prisma';
import { Label, LabelType } from '@prisma/client';

@Injectable()
export class LabelsService {
  constructor(private prisma: PrismaService) {}

  async create(
    userId: string,
    createLabelDto: CreateLabelDto,
  ): Promise<CommonMessageResponse> {
    const newLabel = await this.prisma.label.create({
      data: {
        ...createLabelDto,
        createdById: userId,
      },
    });
    return {
      message: `Created label ${newLabel.name} of type ${newLabel.labelType}`,
    };
  }

  async findAll(): Promise<ResponseWithData<Label[]>> {
    const labels = await this.prisma.label.findMany({});
    return { message: `There are ${labels.length} labels.`, data: labels };
  }

  async findMyLabels(userId: string): Promise<ResponseWithData<Label[]>> {
    const labels = await this.prisma.label.findMany({
      where: { createdById: userId },
    });
    return { message: `You have ${labels.length} labels.`, data: labels };
  }

  async findOne(id: string): Promise<ResponseWithData<Label>> {
    const label = await this.prisma.label.findUniqueOrThrow({ where: { id } });
    return { message: 'Got the label', data: label };
  }

  async findOneByName(name: string): Promise<ResponseWithData<Label>> {
    const label = await this.prisma.label.findFirstOrThrow({ where: { name } });
    return { message: 'Got the label', data: label };
  }

  async findByLabelType(
    labelType: LabelType,
  ): Promise<ResponseWithData<Label[]>> {
    const labels = await this.prisma.label.findMany({ where: { labelType } });
    return { message: `Got ${labels.length} labels.`, data: labels };
  }

  async update(
    id: string,
    updateLabelDto: UpdateLabelDto,
  ): Promise<ResponseWithData<Label>> {
    const label = await this.prisma.label.update({
      where: { id },
      data: { ...updateLabelDto },
    });
    return { message: `Updated ${label.name} label.`, data: label };
  }

  async remove(id: string): Promise<CommonMessageResponse> {
    const label = await this.prisma.label.delete({ where: { id } });
    return { message: `Label ${label.name} has been removed.` };
  }
}
