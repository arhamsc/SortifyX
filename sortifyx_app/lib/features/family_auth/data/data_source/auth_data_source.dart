import 'package:dio/dio.dart';

import '../../utility/utility.dart';
import '../../../../shared/api/api.dart';

import '../../domain/models/models.dart';

class AuthDataSource {
  late final API _api;
  late final Dio _dio;

  AuthDataSource(API api) : _api = api {
    _dio = _api.dio;
  }

  void setAPIToken(String token) {
    _api.setSortifyXBearerToken = token;
  }

  String? getAPIToken() => _api.getSortifyXBearerToken;

  Future<Response<T>> loginRequest<T>(String username, String password) async {
    return await dioTryCatchWrapper(() {
      return _dio.post("/auth/login", data: {
        "username": username,
        "password": password,
      });
    }, _dio);
  }

  Future<Response<T>> registerRequest<T>(
    User user,
    String password,
  ) async {
    return await dioTryCatchWrapper(() {
      return _dio.post("/auth/signUp", data: {
        password: password,
        ...user.toJson(),
      });
    }, _dio);
  }

  Future<Response<T>> refreshTokenRequest<T>() async {
    return await dioTryCatchWrapper(() {
      return _dio.post("/auth/refresh");
    }, _dio);
  }

  Future<Response<T>> logoutRequest<T>(
  ) async {
    return await dioTryCatchWrapper(() {
      return _dio.post("/auth/logout");
    }, _dio);
  }
}
