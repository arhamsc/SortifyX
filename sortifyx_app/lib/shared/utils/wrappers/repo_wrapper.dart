import 'dart:async';

import 'package:dio/dio.dart';

FutureOr<T> repoTryCatchWrapper<T>(
  FutureOr<T> Function() tryBlock,
) async {
  try {
    return await tryBlock();
  } on DioException catch (_) {
    rethrow;
  } catch (e) {
    rethrow;
  }
}
