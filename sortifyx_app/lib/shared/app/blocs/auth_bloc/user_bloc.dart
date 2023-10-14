import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sortifyx_app/shared/data/data.dart';
import 'package:sortifyx_app/shared/domain/domain.dart';
import 'package:sortifyx_app/shared/utils/wrappers/bloc_wrappers.dart';

part 'user_bloc.g.dart';
part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@singleton
class UserBloc extends Bloc<UserEvent, UserState> with HydratedMixin {
  UserBloc(UserRepository userRepo)
      : _userRepo = userRepo,
        super(UserState(
          errorMessage: "",
          loadingMessage: "",
          status: AuthStatus.initial,
          successMessage: "",
          user: UserModel.emptyUser(),
        )) {
    on<UserEvent>((event, emit) async {
      switch (event.runtimeType) {
        case _$UserEventLoginRequestImpl:
          await _onAuthLoginRequest(event, emit);
          break;
        case _$UserEventSignUpRequestImpl:
          await _onAuthSignUpRequest(event, emit);
          break;
        case _$UserEventLogoutRequestImpl:
          await _onAuthLogoutRequest(event, emit);
          break;
        case _$UserEventTokenRefreshRequestImpl:
          await _onAuthTokenRefreshRequest(event, emit);
          break;
        default:
          break;
      }
    });
  }

  final UserRepository _userRepo;

  Future<void> _onAuthLoginRequest(
      UserEvent event, Emitter<UserState> emit) async {
    await userBlocWrapper(
      () async {
        emit(
          state.copyWith(
            status: AuthStatus.loading,
            loadingMessage: "Logging you in, please wait.",
          ),
        );
        if (event is! _$UserEventLoginRequestImpl) return;
        final user = await _userRepo.authenticateLogin(
          event.loginDto,
        );
        emit(
          state.copyWith(
            user: user,
            status: AuthStatus.loggedIn,
            successMessage: "Welcome back to SortifyX",
          ),
        );
      },
      emit,
    );
  }

  Future<void> _onAuthSignUpRequest(
      UserEvent event, Emitter<UserState> emit) async {
    await userBlocWrapper(
      () async {
        emit(
          state.copyWith(
            status: AuthStatus.loading,
            loadingMessage: "Signing you up, please wait.",
          ),
        );
        if (event is! _$UserEventSignUpRequestImpl) return;
        final user = await _userRepo.authenticateSignUp(
          event.signUpDto,
        );
        emit(
          state.copyWith(
            user: user,
            status: AuthStatus.loggedIn,
            successMessage: "Welcome to SortifyX",
          ),
        );
      },
      emit,
    );
  }

  Future<void> _onAuthLogoutRequest(
      UserEvent event, Emitter<UserState> emit) async {
    await userBlocWrapper(
      () async {
        emit(
          state.copyWith(
            status: AuthStatus.loading,
            loadingMessage: "Logging you in, please wait.",
          ),
        );
        if (event is! _$UserEventLogoutRequestImpl) return;
        await _userRepo.authenticateLogout();
        emit(
          state.copyWith(
            user: UserModel.emptyUser(),
            status: AuthStatus.loggedIn,
            successMessage: "See you again later.",
          ),
        );
      },
      emit,
    );
  }

  Future<void> _onAuthTokenRefreshRequest(
      UserEvent event, Emitter<UserState> emit) async {
    await userBlocWrapper(
      () async {
        emit(
          state.copyWith(
            status: AuthStatus.loading,
            loadingMessage: "Re-Logging you in, please wait.",
          ),
        );
        if (event is! _$UserEventLoginRequestImpl) return;
        final user = await _userRepo.authenticateRefreshToken(state.user);
        emit(
          state.copyWith(
            user: user,
            status: AuthStatus.loggedIn,
            successMessage: "Welcome back to SortifyX",
          ),
        );
      },
      emit,
    );
  }

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    return UserState.fromJson(json['auth_bloc']);
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    return {'auth_bloc': state.toJson()};
  }
}
