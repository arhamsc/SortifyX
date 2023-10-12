import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../data/data.dart';
import '../../../domain/models/models.dart';
import '../../../utility/bloc_wrapper.dart';

part 'auth_bloc.g.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> with HydratedMixin {
  AuthBloc(AuthRepository authRepo)
      : _authRepo = authRepo,
        super(AuthState(
          errorMessage: "",
          family: Family.empty(),
          loadingMessage: "",
          status: AuthStatus.initial,
          successMessage: "",
          user: UserModel.emptyUser(),
        )) {
    on<AuthEvent>((event, emit) async {
      switch (event.runtimeType) {
        case _$AuthEventLoginRequestImpl:
          await _onAuthLoginRequest(event, emit);
          break;
        case _$AuthEventSignUpRequestImpl:
          await _onAuthSignUpRequest(event, emit);
          break;
        case _$AuthEventLogoutRequestImpl:
          await _onAuthLogoutRequest(event, emit);
          break;
        case _$AuthEventTokenRefreshRequestImpl:
          await _onAuthTokenRefreshRequest(event, emit);
          break;
        default:
          break;
      }
    });
  }

  final AuthRepository _authRepo;

  Future<void> _onAuthLoginRequest(
      AuthEvent event, Emitter<AuthState> emit) async {
    await authBlocTryCatchWrapper(() async {
      emit(
        state.copyWith(
          status: AuthStatus.loading,
          loadingMessage: "Logging you in, please wait.",
        ),
      );
      if (event is! _$AuthEventLoginRequestImpl) return;
      final user = await _authRepo.authenticateLogin(
        event.username,
        event.password,
      );
      emit(
        state.copyWith(
          user: user,
          status: AuthStatus.loggedIn,
          successMessage: "Welcome back to SortifyX",
        ),
      );
    }, emit, state);
  }

  Future<void> _onAuthSignUpRequest(
      AuthEvent event, Emitter<AuthState> emit) async {
    await authBlocTryCatchWrapper(() async {
      emit(
        state.copyWith(
          status: AuthStatus.loading,
          loadingMessage: "Signing you up, please wait.",
        ),
      );
      if (event is! _$AuthEventSignUpRequestImpl) return;
      final user = await _authRepo.authenticateSignUp(
        event.user,
        event.password,
      );
      emit(
        state.copyWith(
          user: user,
          status: AuthStatus.loggedIn,
          successMessage: "Welcome to SortifyX",
        ),
      );
    }, emit, state);
  }

  Future<void> _onAuthLogoutRequest(
      AuthEvent event, Emitter<AuthState> emit) async {
    await authBlocTryCatchWrapper(() async {
      emit(
        state.copyWith(
          status: AuthStatus.loading,
          loadingMessage: "Logging you in, please wait.",
        ),
      );
      if (event is! _$AuthEventLogoutRequestImpl) return;
      await _authRepo.authenticateLogout();
      emit(
        state.copyWith(
          user: UserModel.emptyUser(),
          status: AuthStatus.loggedIn,
          successMessage: "See you again later.",
        ),
      );
    }, emit, state);
  }

  Future<void> _onAuthTokenRefreshRequest(
      AuthEvent event, Emitter<AuthState> emit) async {
    await authBlocTryCatchWrapper(() async {
      emit(
        state.copyWith(
          status: AuthStatus.loading,
          loadingMessage: "Re-Logging you in, please wait.",
        ),
      );
      if (event is! _$AuthEventLoginRequestImpl) return;
      final user = await _authRepo.authenticateRefreshToken();
      emit(
        state.copyWith(
          user: user,
          status: AuthStatus.loggedIn,
          successMessage: "Welcome back to SortifyX",
        ),
      );
    }, emit, state);
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json['auth_bloc']);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return {'auth_bloc': state.toJson()};
  }
}
