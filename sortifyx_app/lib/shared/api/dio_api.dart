import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/utils/my_talker.dart';

@singleton
@Order(-3)
class API {
  API() {
    _dio.options.baseUrl = dotenv.env["SORTIFY_X_API_URL"] ?? "";
    _dio.options.connectTimeout =
        const Duration(milliseconds: 5000); // 5 seconds
    _dio.options.receiveTimeout = const Duration(seconds: 10); // 10 seconds
    _dio.interceptors.add(
      getIt.get<MyTalker>().talkerDioLogger,
    );
    _dio.options.headers['Authorization'] = "Bearer $_sortifyXBearerToken";
    _dio.options.headers['Accept'] = "application/json";
    _dio.options.headers['ContentType'] = "application/json";
  }

  String? _sortifyXBearerToken;

  String? get getSortifyXBearerToken => _sortifyXBearerToken;

  set setSortifyXBearerToken(String token) {
    _sortifyXBearerToken = token;
    _dio.options.headers['Authorization'] = "Bearer $_sortifyXBearerToken";
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;
}
