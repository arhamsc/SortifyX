import 'package:injectable/injectable.dart';
import 'package:sortifyx_app/shared/data/data.dart';
import 'package:sortifyx_app/shared/domain/domain.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';


@injectable
@Order(-1)
//Todo: Link API Calls
class UserRepository {
  late final AuthDataSource _authDataSource;

  UserRepository(AuthDataSource authDataSource)
      : _authDataSource = authDataSource;

  Future<User> authenticateLogin(LoginDto loginDto) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _authDataSource.loginRequest(loginDto);
      final user = User.fromJson(userResponse.data);
      await _authDataSource.setAPIToken(user.accessToken ?? "");
      return user;
    });
  }

  Future<User> authenticateSignUp(SignUpDto signUpDto) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _authDataSource.registerRequest(signUpDto);
      final userData = User.fromJson(userResponse.data);
      // final userData = UserModel.emptyUser();
      await _authDataSource.setAPIToken(userData.accessToken ?? "");
      return userData;
    });
  }

  Future<String> authenticateLogout() async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _authDataSource.logoutRequest();
      return userResponse.data["message"];
    });
  }

  Future<User> authenticateRefreshToken(User oldUser) async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _authDataSource.refreshTokenRequest();
      final user = oldUser.copyWith(
        accessToken: userResponse.data["accessToken"],
        refreshToken: userResponse.data["refreshToken"],
      );
      // final user = UserModel.emptyUser();
      _authDataSource.setAPIToken(user.accessToken ?? "");
      return user;
    });
  }
}
