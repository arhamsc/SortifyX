import '../../../../shared/api/api.dart';
import '../../../../shared/utils/utils.dart';
import '../../data/data.dart';
import '../../domain/models/models.dart';

class AuthRepository {
  late final AuthDataSource _authDataSource;

  AuthRepository(API api, AuthDataSource authDataSource)
      : _authDataSource = authDataSource;

  Future<User> authenticateLogin(String username, String password) async {
    return await repoTryCatchWrapper(() async {
      final userResponse =
          await _authDataSource.loginRequest(username, password);
      return User.fromJson(userResponse.data);
    });
  }

  Future<User> authenticateSignUp(User user, String password) async {
    return await repoTryCatchWrapper(() async {
      final userResponse =
          await _authDataSource.registerRequest(user, password);
      return User.fromJson(userResponse.data);
    });
  }

  Future<String> authenticateLogout() async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _authDataSource.logoutRequest();
      return userResponse.data["message"];
    });
  }

  Future<User> authenticateRefreshToken() async {
    return await repoTryCatchWrapper(() async {
      final userResponse = await _authDataSource.refreshTokenRequest();
      return User.fromJson(userResponse.data);
    });
  }
}
