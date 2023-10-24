import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/data/data.dart';
import 'package:sortifyx_app/shared/domain/domain.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

@injectable
@Order(-1)
//Todo: Link API Calls
class UserRepository {
  late final UserDataSource _userDataSource;

  UserRepository(UserDataSource authDataSource)
      : _userDataSource = authDataSource {
    SharedPreferences.getInstance().then((pref) {
      final token = pref.getString("accessToken");
      if (token != null) {
        _userDataSource.setAPIToken(token);
        getIt.get<MyTalker>().talker.log(token);
      }
    });
  }

  Future<User> authenticateLogin(LoginDto loginDto) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _userDataSource.loginRequest(loginDto);
      final user = User.fromJson(userResponse.data);
      await _userDataSource.setAPIToken(user.accessToken ?? "");
      return user;
    });
  }

  Future<User> authenticateSignUp(SignUpDto signUpDto) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _userDataSource.registerRequest(signUpDto);
      final userData = User.fromJson(userResponse.data);
      // final userData = UserModel.emptyUser();
      await _userDataSource.setAPIToken(userData.accessToken ?? "");
      return userData;
    });
  }

  Future<String> authenticateLogout() async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _userDataSource.logoutRequest();
      return userResponse.data["message"];
    });
  }

  Future<User> authenticateRefreshToken(User oldUser) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _userDataSource.refreshTokenRequest();
      final user = oldUser.copyWith(
        accessToken: userResponse.data["accessToken"],
        refreshToken: userResponse.data["refreshToken"],
      );
      // final user = UserModel.emptyUser();
      _userDataSource.setAPIToken(user.accessToken ?? "");
      return user;
    });
  }

  Future<UserModel> getMyProfile(UserModel oldUser) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _userDataSource.getMyProfile();
      final profile = UserModel.fromJson(userResponse.data);
      final user = oldUser.copyWith(
        email: profile.email,
        firstName: profile.firstName,
        id: profile.id,
        lastName: profile.lastName,
        phone: profile.phone,
        username: profile.username,
        isAdmin: profile.isAdmin,
      );
      // final user = UserModel.emptyUser();
      return user;
    });
  }

  Future<String> updateFCMToken(String id, String fcmToken) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _userDataSource.updateFCMToken(
        id: id,
        fcmToken: fcmToken,
      );
      // final user = UserModel.emptyUser();

      return userResponse.data["message"];
    });
  }

  Future<ApiResponse<bool>> checkUserHasFamily() async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _userDataSource.checkUserHasFamily();
      // final user = UserModel.emptyUser();

      return ApiResponse.fromJson(
        userResponse.data,
        (json) => json as bool,
      );
    });
  }

  Future<ApiResponse<UserModel>> getUserById(String id) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _userDataSource.getUserById(
        id,
      );
      // final user = UserModel.emptyUser();

      return ApiResponse.fromJson(
        userResponse.data,
        (json) => UserModel.fromJson(
          json as Map<String, dynamic>,
        ),
      );
    });
  }

  Future<ApiResponse<bool>> checkUsernameOrEmail(
      {String? username, String? email}) async {
    return await repoTryCatchWrapper<ApiResponse<bool>>(() async {
      final userResponse = await _userDataSource.checkUsernameOrEmail(
        username: username,
        email: email,
      );

      return ApiResponse.fromJson(
        userResponse.data,
        (json) => json as bool,
      );
    });
  }
}
