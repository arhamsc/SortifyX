import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/features/auth/utility/utility.dart';
import 'package:sortifyx_app/shared/api/api.dart';
import 'package:sortifyx_app/shared/data/data.dart';

@injectable
@Order(-2)
class FamilyDataSource {
  final API _api = getIt.get();
  late final Dio _dio;

  FamilyDataSource() {
    _dio = _api.dio;
  }

  Future<Response<T>> createFamily<T>(CreateFamilyDto dto) async {
    return await dioTryCatchWrapper(() async {
      return await _dio.post(
        '/family',
        data: dto.toJson(),
      );
    });
  }

  Future<Response<T>> getMyFamilies<T>() async {
    return await dioTryCatchWrapper(() async {
      return await _dio.get(
        '/family/my',
      );
    });
  }

  Future<Response<T>> getFamilyById<T>(String familyId) async {
    return await dioTryCatchWrapper(() async {
      return await _dio.get("/family/$familyId");
    });
  }

  Future<Response<T>> joinFamily<T>(String familyCode) async {
    return await dioTryCatchWrapper(() async {
      return await _dio.patch('/family/$familyCode/addMember');
    });
  }

  Future<Response<T>> updateFamily<T>(UpdateFamilyDto dto) async {
    return await dioTryCatchWrapper(() async {
      return await _dio.patch(
        '/family',
        data: dto.toJson(),
      );
    });
  }
}
