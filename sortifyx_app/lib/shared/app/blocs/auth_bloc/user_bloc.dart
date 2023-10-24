import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/data/data.dart';
import 'package:sortifyx_app/shared/domain/domain.dart';
import 'package:sortifyx_app/shared/enums/user_state_status_enum/user_state_status_enum.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';
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
          status: UserStateStatusEnum.initial(),
          successMessage: "",
          user: UserModel.emptyUser(),
          userHasFamily: false,
        )) {
    on<UserEvent>((event, emit) async {
      getIt.get<MyTalker>().talker.log(event.runtimeType);
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
        case _$UserGetMyProfileImpl:
          await _onGetMyProfile(event, emit);
          break;
        case _$UserUpdateFCMTokenImpl:
          await _onUpdateFCMToken(event, emit);
          break;
        case _$UserCheckUserHasFamilyImpl:
          await _onCheckUserHasFamily(event, emit);
          break;
        case _$UserGetUserByIdImpl:
          await _onGetUserById(event, emit);
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
            status: UserStateStatusEnum.loading(),
            loadingMessage: "Logging you in, please wait.",
          ),
        );
        if (event is! _$UserEventLoginRequestImpl) return;
        final user = await _userRepo.authenticateLogin(
          event.loginDto,
        );
        getIt.get<MyTalker>().talker.log(user);
        emit(
          state.copyWith(
            user: user,
            status: UserStateStatusEnum.loggedIn(),
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
            status: UserStateStatusEnum.loading(),
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
            status: UserStateStatusEnum.loggedIn(),
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
            status: UserStateStatusEnum.loading(),
            loadingMessage: "Logging you in, please wait.",
          ),
        );
        if (event is! _$UserEventLogoutRequestImpl) return;
        await _userRepo.authenticateLogout();
        emit(
          state.copyWith(
            user: UserModel.emptyUser(),
            status: UserStateStatusEnum.loggedIn(),
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
            status: UserStateStatusEnum.loading(),
            loadingMessage: "Re-Logging you in, please wait.",
          ),
        );
        if (event is! _$UserEventLoginRequestImpl) return;
        final user = await _userRepo.authenticateRefreshToken(state.user);
        emit(
          state.copyWith(
            user: user,
            status: UserStateStatusEnum.loggedIn(),
            successMessage: "Welcome back to SortifyX",
          ),
        );
      },
      emit,
    );
  }

  Future<void> _onGetMyProfile(UserEvent event, Emitter<UserState> emit) async {
    await userBlocWrapper(
      () async {
        emit(
          state.copyWith(
            status: UserStateStatusEnum.loading(),
            loadingMessage: "Fetching your profile, please wait.",
          ),
        );
        if (event is! _$UserGetMyProfileImpl) return;
        final user = await _userRepo.getMyProfile(state.user);
        emit(
          state.copyWith(
            user: user as User,
            status: UserStateStatusEnum.loggedIn(),
            successMessage: "Your profile has been fetched.",
          ),
        );
      },
      emit,
    );
  }

  Future<void> _onUpdateFCMToken(
      UserEvent event, Emitter<UserState> emit) async {
    await userBlocWrapper(
      () async {
        emit(
          state.copyWith(
            status: UserStateStatusEnum.loading(),
            loadingMessage: "Updating your info, please wait.",
          ),
        );
        if (event is! _$UserUpdateFCMTokenImpl) return;
        final message =
            await _userRepo.updateFCMToken(event.id, event.fcmToken);
        emit(
          state.copyWith(
            status: UserStateStatusEnum.loggedIn(),
            successMessage: message,
          ),
        );
      },
      emit,
    );
  }

  Future<void> _onCheckUserHasFamily(
      UserEvent event, Emitter<UserState> emit) async {
    await userBlocWrapper(
      () async {
        emit(
          state.copyWith(
            status: UserStateStatusEnum.loading(),
            loadingMessage: "Deleting your profile, please wait.",
          ),
        );
        if (event is! _$UserCheckUserHasFamilyImpl) return;
        final res = await _userRepo.checkUserHasFamily();
        emit(
          state.copyWith(
            userHasFamily: res.data ?? false,
            status: UserStateStatusEnum.loggedIn(),
            successMessage: res.message,
          ),
        );
      },
      emit,
    );
  }

  Future<void> _onGetUserById(UserEvent event, Emitter<UserState> emit) async {
    await userBlocWrapper(
      () async {
        emit(
          state.copyWith(
            status: UserStateStatusEnum.loading(),
            loadingMessage: "Fetching profile, please wait.",
          ),
        );
        if (event is! _$UserGetUserByIdImpl) return;
        final res = await _userRepo.getUserById(event.id);
        emit(
          state.copyWith(
            status: UserStateStatusEnum.loggedIn(),
            successMessage: res.message,
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
