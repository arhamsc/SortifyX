import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../utils/utils.dart';

class API {
  factory API() {
    return _singleton;
  }

  API._internal() {
    _dio.options.baseUrl = dotenv.env["SORTIFY_X_API_URL"] ?? "";
    _dio.options.connectTimeout =
        const Duration(milliseconds: 5000); // 5 seconds
    _dio.options.receiveTimeout = const Duration(seconds: 10); // 10 seconds
    _dio.interceptors.add(
      MyTalker.instance.talkerDioLogger,
    );
    _dio.options.headers['Authorization'] = "Bearer $_sortifyXBearerToken";
    _dio.options.headers['Accept'] = "application/json";
    _dio.options.headers['ContentType'] = "application/json";
  }

  static final API _singleton = API._internal();
  String? _sortifyXBearerToken;

  String? get getSortifyXBearerToken => _sortifyXBearerToken;

  set setSortifyXBearerToken(String token) {
    _sortifyXBearerToken = token;
    _dio.options.headers['Authorization'] = "Bearer $_sortifyXBearerToken";
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;
}
