import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/app/app.dart';

import '../get_dio_error_message.dart';

FutureOr<void> userBlocWrapper<T>(
  FutureOr<T> Function() tryBlock,
  Emitter emit,
) async {
  final UserState state = getIt.get<UserBloc>().state;
  try {
    await tryBlock();
  } on DioException catch (e) {
    emit(
      state.copyWith(
        status: AuthStatus.error,
        errorMessage: getDioExceptionMessage(e),
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

FutureOr<void> familyBlocWrapper<T>(
  FutureOr<T> Function() tryBlock,
  Emitter emit,
) async {
  final state = getIt.get<FamilyBloc>().state;
  try {
    await tryBlock();
  } on DioException catch (e) {
    emit(
      state.copyWith(
        status: FamilyBlocStatus.error,
        errorMessage: getDioExceptionMessage(e),
      ),
    );
  } catch (e) {
    emit(
      state.copyWith(
        status: FamilyBlocStatus.error,
        errorMessage: "Something went wrong.",
      ),
    );
  }
}
