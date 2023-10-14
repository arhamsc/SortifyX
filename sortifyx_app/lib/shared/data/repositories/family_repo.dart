import 'package:injectable/injectable.dart';
import 'package:sortifyx_app/shared/data/data.dart';
import 'package:sortifyx_app/shared/domain/domain.dart';
import 'package:sortifyx_app/shared/utils/wrappers/repo_wrapper.dart';

@singleton
@Order(-1)
class FamilyRepository {
  late final FamilyDataSource _familyDataSource;

  FamilyRepository(FamilyDataSource familyDataSource)
      : _familyDataSource = familyDataSource;

  Future<ApiResponse<FamilyModel>> createFamily(CreateFamilyDto dto) async {
    return await repoTryCatchWrapper<ApiResponse<FamilyModel>>(() async {
      final res = await _familyDataSource.createFamily(dto);
      return ApiResponse.fromJson(
        res.data,
        (json) => FamilyModel.fromJson(json as Map<String, dynamic>),
      );
    });
  }

  Future<ApiResponse<List<FamilyModel>>> getMyFamilies() async {
    return await repoTryCatchWrapper(() async {
      final res = await _familyDataSource.getMyFamilies();
      return ApiResponse.fromJson(
        res.data,
        (json) => (json as List<dynamic>)
            .map((e) => FamilyModel.fromJson(e))
            .toList(),
      );
    });
  }

  Future<ApiResponse<FamilyModel>> getFamilyById(String familyId) async {
    return await repoTryCatchWrapper<ApiResponse<FamilyModel>>(() async {
      final res = await _familyDataSource.getFamilyById(familyId);
      return ApiResponse.fromJson(
        res.data,
        (json) => FamilyModel.fromJson(json as Map<String, dynamic>),
      );
    });
  }

  Future<ApiResponse<FamilyModel>> joinFamily(String familyCode) async {
    return await repoTryCatchWrapper<ApiResponse<FamilyModel>>(() async {
      final res = await _familyDataSource.joinFamily(familyCode);
      return ApiResponse.fromJson(
        res.data,
        (json) => FamilyModel.fromJson(json as Map<String, dynamic>),
      );
    });
  }

  Future<ApiResponse<FamilyModel>> updateFamily(UpdateFamilyDto dto) async {
    return await repoTryCatchWrapper<ApiResponse<FamilyModel>>(() async {
      final res = await _familyDataSource.updateFamily(dto);
      return ApiResponse.fromJson(
        res.data,
        (json) => FamilyModel.fromJson(json as Map<String, dynamic>),
      );
    });
  }
}
