import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/enums/family_bloc_status/family_bloc_status.dart';
import 'package:sortifyx_app/shared/enums/user_state_status_enum/user_state_status_enum.dart';
import 'package:sortifyx_app/shared/utils/my_talker.dart';

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
        status: UserStateStatusEnum.error(),
        errorMessage: getDioExceptionMessage(e),
      ),
    );
  } catch (e) {
    getIt.get<MyTalker>().talker.error(e);
    emit(
      state.copyWith(
        status: UserStateStatusEnum.error(),
        errorMessage: e.toString(),
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
        status: FamilyBlocStatus.error(),
        errorMessage: getDioExceptionMessage(e),
      ),
    );
  } catch (e) {
    getIt.get<MyTalker>().talker.error(e);
    emit(
      state.copyWith(
        status: FamilyBlocStatus.error(),
        errorMessage: e.toString(),
      ),
    );
  }
}
