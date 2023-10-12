import {
  AbilityBuilder,
  InferSubjects,
  MongoQuery,
  PureAbility,
  createMongoAbility,
} from '@casl/ability';
import { Injectable } from '@nestjs/common';
import { Family, User } from '@prisma/client';
import { FamilyAction } from 'src/shared/enums';

type MySubjects = Family | 'Family' | User | 'User';

export type AppFamilyAbility = PureAbility<
  [FamilyAction, InferSubjects<MySubjects> | 'all'],
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
}
