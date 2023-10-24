import 'package:flash/flash_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/main.dart';

import '../../../features/documents/presentation/screens/screens.dart';
import '../../../features/auth/presentation/screens/screens.dart';
import '../../utils/utils.dart';
import '../app.dart';

@singleton
@Order(-1)
class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: RouteDetails.authPage.path,
    navigatorKey: navigatorKey,
    redirect: (context, state) {
      final userState = getIt.get<UserBloc>().state;
      final bool loggedIn = userState.isAuthenticated;
      // MyTalkerLogger.instance.talker.critical("Login State $loggedIn");
      if (!loggedIn) {
        return state.namedLocation(RouteDetails.authPage.name);
      } else {
        if (!userState.userHasFamily) {
          return state.namedLocation(RouteDetails.authFamilyIntroPage.name);
        }
        // getIt.get<MyTalker>().talker.log(state.path == null);
        if (state.path == null) {
          return state.namedLocation(RouteDetails.documentsHomePage.name);
        }
        return null;
      }
    },
    routes: [
      GoRoute(
        name: RouteDetails.authPage.name,
        path: RouteDetails.authPage.path,
        builder: (context, state) => wrapWithOverlay(builder: (context) {
          return const AuthPage();
        }),
      ),
      GoRoute(
        name: RouteDetails.authFamilyIntroPage.name,
        path: RouteDetails.authFamilyIntroPage.path,
        builder: (context, state) => const FamilyRegistrationIntro(),
      ),
      GoRoute(
        name: RouteDetails.documentsHomePage.name,
        path: RouteDetails.documentsHomePage.path,
        builder: (context, state) => const DocumentsHome(),
      ),
    ],
    observers: [
      getIt.get<MyTalker>().talkerRouteObserver,
    ],
  );
}
