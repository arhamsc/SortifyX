import {
  AbilityBuilder,
  InferSubjects,
  MongoQuery,
  PureAbility,
  createMongoAbility,
} from '@casl/ability';
import { Injectable } from '@nestjs/common';
import { Document, Family, Label, User } from '@prisma/client';
import {
  AdminFeatureAction,
  DocumentAction,
  FamilyAction,
} from 'src/shared/enums';

type MySubjects = Family | 'Family' | User | 'User';
type MyAdminFeatureSubjects = Label | 'Label' | User | 'User';
type MyDocSubjects = Document | 'Document' | User | 'User';

export type AppFamilyAbility = PureAbility<
  [FamilyAction, InferSubjects<MySubjects> | 'all'],
  MongoQuery
>;
export type AppAdminFeatureAbility = PureAbility<
  [AdminFeatureAction, InferSubjects<MyAdminFeatureSubjects> | 'all'],
  MongoQuery
>;
export type AppDocumentAbility = PureAbility<
  [DocumentAction, InferSubjects<MyDocSubjects> | 'all'],
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

  createDocumentRoleForUser(user: User) {
    const { can, cannot, build } = new AbilityBuilder<AppDocumentAbility>(
      createMongoAbility,
    );

    if (user.isAdmin) {
      can(DocumentAction.ManageDocument, 'all'); // read-write access to everything
    } else {
      // console.log({ user });
      can(DocumentAction.UpdateDocument, 'Document', {
        uploadedById: user.id,
      });

      can(DocumentAction.DeleteDocument, 'Document', {
        uploadedById: user.id,
      });

      //Family members, familyHead or owner only can view the doc
      can(DocumentAction.ReadDocument, 'Document', {
        $or: [
          {
            uploadedById: user.id,
          },
          {
            'family.familyHeadId': user.id,
          },
          {
            'family.familyMembers.id': user.id,
          },
        ],
      });
    }
    return build();
  }
}
