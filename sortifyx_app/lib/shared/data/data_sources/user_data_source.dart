import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/api/api.dart';
import 'package:sortifyx_app/shared/data/data.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

@injectable
@Order(-2)
class UserDataSource {
  final API _api = getIt.get<API>();
  late final Dio _dio;

  UserDataSource() {
    _dio = _api.dio;
  }

  Future<void> setAPIToken(String token) async {
    _api.setSortifyXBearerToken = token;
    final pref = await SharedPreferences.getInstance();
    pref.setString("accessToken", token);
  }

  String? getAPIToken() => _api.getSortifyXBearerToken;

  Future<Response<T>> loginRequest<T>(LoginDto loginDto) async {
    return await dioTryCatchWrapper(
      () {
        return _dio.post("/auth/login", data: loginDto.toJson());
      },
    );
  }

  Future<Response<T>> registerRequest<T>(
    SignUpDto signUpDto,
  ) async {
    return await dioTryCatchWrapper(
      () {
        return _dio.post("/auth/signUp", data: signUpDto.toJson());
      },
    );
  }

  Future<Response<T>> refreshTokenRequest<T>() async {
    return await dioTryCatchWrapper(
      () {
        return _dio.post("/auth/refresh");
      },
    );
  }

  Future<Response<T>> logoutRequest<T>() async {
    return await dioTryCatchWrapper(
      () {
        return _dio.post("/auth/logout");
      },
    );
  }

  Future<Response<T>> getMyProfile<T>() async {
    return await dioTryCatchWrapper(
      () {
        return _dio.get("/user/my");
      },
    );
  }

  Future<Response<T>> updateFCMToken<T>({
    required String id,
    required String fcmToken,
  }) async {
    return await dioTryCatchWrapper(
      () {
        return _dio.post("/user/$id/fcmToken", data: {'fcmToken': fcmToken});
      },
    );
  }

  Future<Response<T>> deleteUser<T>(String id) async {
    return await dioTryCatchWrapper(
      () {
        return _dio.delete("/user/$id");
      },
    );
  }

  Future<Response<T>> checkUserHasFamily<T>() async {
    return await dioTryCatchWrapper(
      () {
        return _dio.get("/user/check-my-family-count");
      },
    );
  }

  Future<Response<T>> getUserById<T>(String id) async {
    return await dioTryCatchWrapper(
      () {
        return _dio.get("/user/$id");
      },
    );
  }
}
