import 'package:injectable/injectable.dart';

import '../../../../shared/utils/utils.dart';
import '../../data/data.dart';
import '../../domain/models/models.dart';

@injectable
// @Order(-2)
//Todo: Link API Calls
class AuthRepository {
  late final AuthDataSource _authDataSource;

  AuthRepository(AuthDataSource authDataSource)
      : _authDataSource = authDataSource;

  Future<User> authenticateLogin(String username, String password) async {
    return await repoTryCatchWrapper(() async {
      // final userResponse =
      //     await _authDataSource.loginRequest(username, password);
      // final user = User.fromJson(userResponse.data);
      final user = User.empty();
      return Future.delayed(const Duration(seconds: 2), () {
        _authDataSource.setAPIToken(user.accessToken ?? "");
        return user;
      });
    });
  }

  Future<User> authenticateSignUp(User user, String password) async {
    return await repoTryCatchWrapper(() async {
      // final userResponse =
      //     await _authDataSource.registerRequest(user, password);
      // final userData = User.fromJson(userResponse.data);
      final userData = User.empty();
      return Future.delayed(const Duration(seconds: 2), () {
        _authDataSource.setAPIToken(user.accessToken ?? "");
        return userData;
      });
    });
  }

  Future<String> authenticateLogout() async {
    return await repoTryCatchWrapper(() async {
      // final userResponse = await _authDataSource.logoutRequest();
      // return userResponse.data["message"];
      return "Success";
    });
  }

  Future<User> authenticateRefreshToken() async {
    return await repoTryCatchWrapper(() async {
      // final userResponse = await _authDataSource.refreshTokenRequest();
      // final user = User.fromJson(userResponse.data);
      final user = User.empty();
      _authDataSource.setAPIToken(user.accessToken ?? "");
      return user;
    });
  }
}
