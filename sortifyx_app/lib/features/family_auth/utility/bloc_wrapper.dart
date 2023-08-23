import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/bloc/bloc.dart';

FutureOr<void> authBlocTryCatchWrapper<T>(
  FutureOr<T> Function() tryBlock,
  Emitter emit,
  AuthState state,
) async {
  try {
    await tryBlock();
  } on DioException catch (e) {
    emit(
      state.copyWith(
        status: AuthStatus.error,
        errorMessage: e.error != null
            ? e.error.toString()
            : e.response?.statusCode == 401
                ? "Please logout"
                : "Could not login.",
      ),
    );
  } catch (e) {
    emit(
      state.copyWith(
        status: AuthStatus.error,
        errorMessage: "Something went wrong.",
      ),
    );
  }
}
