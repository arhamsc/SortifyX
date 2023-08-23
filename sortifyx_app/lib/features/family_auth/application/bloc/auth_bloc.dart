import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../data/data.dart';
import '../../domain/models/models.dart';
import '../../utility/bloc_wrapper.dart';

part 'auth_bloc.g.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> with HydratedMixin {
  AuthBloc(this._authRepo)
      : super(const AuthState(
          errorMessage: "",
          family: Family.empty,
          loadingMessage: "",
          status: AuthStatus.initial,
          successMessage: "",
          user: User.empty,
        )) {
    on<AuthEvent>((event, emit) async {
      switch (event.runtimeType) {
        case AuthLoginRequest:
          await _onAuthLoginRequest(event, emit);
          break;
        case AuthSignUpRequest:
          await _onAuthSignUpRequest(event, emit);
          break;
        case AuthLogoutRequest:
          await _onAuthLogoutRequest(event, emit);
          break;
        case AuthTokenRefreshRequest:
          await _onAuthTokenRefreshRequest(event, emit);
          break;
        case AuthDummyEvent:
          emit(
            state.copyWith(
              loadingMessage: "Dummy Event",
            ),
          );
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
      if (event is! AuthLoginRequest) return;
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
      if (event is! AuthSignUpRequest) return;
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
      if (event is! AuthLogoutRequest) return;
      await _authRepo.authenticateLogout();
      emit(
        state.copyWith(
          user: User.empty,
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
      if (event is! AuthLoginRequest) return;
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
