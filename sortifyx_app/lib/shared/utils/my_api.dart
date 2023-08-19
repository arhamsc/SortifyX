import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

class API {
  factory API() {
    return _singleton;
  }

  API._internal() {
    _dio.options.baseUrl = dotenv.env["GGT_WEB_SERVICE_BASE_URL"] ?? "";
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 35);
    _dio.interceptors.add(
      MyTalker.instance.talkerDioLogger,
    );
    _dio.options.headers['Authorization'] = "Bearer $_ggtToken";
    _dio.options.headers['Accept'] = "application/json";
    _dio.options.headers['ContentType'] = "application/json";
    // set up other options as needed
  }
  static final API _singleton = API._internal();
  String? _ggtToken;

  String? get getGGTRepoToken => _ggtToken;

  set setGGTRepoToken(String token) {
    _ggtToken = token;
    _dio.options.headers['Authorization'] = "Bearer $_ggtToken";
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;
}
