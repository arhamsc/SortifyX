import 'dart:async';

import 'package:dio/dio.dart';

FutureOr<T> dioTryCatchWrapper<T>(
    FutureOr<T> Function() tryBlock, Dio dio) async {
  try {
    return await tryBlock();
  } on DioException catch (e) {
    if (DioExceptionType.unknown == e.type) {
      if ((e.error.toString()).contains('SocketException')) {
        throw DioException(
          error: "Check if your device is connected to internet.",
          requestOptions: RequestOptions(
            baseUrl: dio.options.baseUrl,
          ),
          type: DioExceptionType.unknown,
        );
      }
    } else if (e.response?.statusCode == 413) {
      throw DioException(
        error: "Please upload smaller file size.",
        requestOptions: RequestOptions(
          baseUrl: dio.options.baseUrl,
        ),
        type: DioExceptionType.unknown,
      );
    }
    rethrow;
  } catch (e) {
    rethrow;
  }
}
