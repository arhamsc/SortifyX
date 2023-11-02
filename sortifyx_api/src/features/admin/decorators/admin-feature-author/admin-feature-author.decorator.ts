import { SetMetadata, UseGuards, applyDecorators } from '@nestjs/common';
import { AdminFeatureAuthorGuard } from '../../guards/admin-feature-author/admin-feature-author.guard';
import { AdminFeatureAction } from 'src/shared/enums';

export const ADMIN_FEATURE_ACTION_KEY = 'admin-features-role';
type args = {
  forFeature: 'labels';
  roles: AdminFeatureAction[];
};

export const AdminFeatureAuthor = ({ forFeature, roles }: args) =>
  applyDecorators(
    SetMetadata(ADMIN_FEATURE_ACTION_KEY, roles),
    SetMetadata('forAdminFeature', forFeature),
    UseGuards(AdminFeatureAuthorGuard),
  );
