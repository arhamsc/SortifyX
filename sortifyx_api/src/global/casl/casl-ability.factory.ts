import {
  AbilityBuilder,
  InferSubjects,
  MongoQuery,
  PureAbility,
  createMongoAbility,
} from '@casl/ability';
import { Injectable } from '@nestjs/common';
import { Family, Label, User } from '@prisma/client';
import { AdminFeatureAction, FamilyAction } from 'src/shared/enums';

type MySubjects = Family | 'Family' | User | 'User';
type MyAdminFeatureSubjects = Label | 'Label' | User | 'User';

export type AppFamilyAbility = PureAbility<
  [FamilyAction, InferSubjects<MySubjects> | 'all'],
  MongoQuery
>;
export type AppAdminFeatureAbility = PureAbility<
  [AdminFeatureAction, InferSubjects<MyAdminFeatureSubjects> | 'all'],
  MongoQuery
>;

@Injectable()
export class CaslAbilityFactory {
  createForUser(user: User) {
    const { can, cannot, build } = new AbilityBuilder<AppFamilyAbility>(
      createMongoAbility,
    );

    if (user.isAdmin) {
      can(FamilyAction.ManageFamily, 'all'); // read-write access to everything
    } else {
      //Access only for family members to read and ADMIN
      can(FamilyAction.ReadFamily, 'Family', {
        'familyMembers.id': { $eq: user.id },
      });
      can(FamilyAction.ReadFamily, 'Family', {
        familyHeadId: { $eq: user.id },
      });
      //Access to manage family for family head
      can(FamilyAction.ManageFamily, 'Family', { familyHeadId: user.id });

      // cannot(FamilyAction.DeleteFamily, 'Family', {
      //   familyHeadId: { $eq: user.id },
      // });
      //* Can add more like for family vice-head etc
    }

    return build();
  }

  createAdminFeatureForUser(user: User, forFeature: string) {
    const { can, cannot, build } = new AbilityBuilder<AppAdminFeatureAbility>(
      createMongoAbility,
    );

    if (user.isAdmin) {
      can(AdminFeatureAction.ManageAdminFeature, 'all'); // read-write access to everything
    } else {
      if (forFeature === 'labels') {
        // console.log({ user });
        can(AdminFeatureAction.DeleteAdminFeature, 'Label', {
          createdById: user.id,
        });

        can(AdminFeatureAction.UpdateAdminFeature, 'Label', {
          createdById: user.id,
        });
      }
    }

    return build();
  }
}
