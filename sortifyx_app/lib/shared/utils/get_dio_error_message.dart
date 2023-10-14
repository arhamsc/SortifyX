import 'package:dio/dio.dart';

String getDioExceptionMessage(DioException e) {
  return e.error != null
      ? e.error.toString()
      : e.response?.statusCode == 401
          ? "Your login has expired, or you do not have right permission to access, please try to RE-LOGIN."
          : e.response?.data["message"] is String
              ? e.response?.data["message"]
              : e.response?.data["message"] is List
                  ? List.from(e.response?.data["message"]).join(" and ")
                  : "Could not login.";
}
