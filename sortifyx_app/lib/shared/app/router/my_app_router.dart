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
    // initialLocation: "${RouteDetails.authSignUpFamilyPage.path}?page=register",
    initialLocation: RouteDetails.authPage.path,
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        name: RouteDetails.authPage.name,
        path: RouteDetails.authPage.path,
        builder: (context, state) => const AuthPage(),
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
      // GoRoute(
      //   name: RouteDetails.authSignUpFamilyPage.name,
      //   path: RouteDetails.authSignUpFamilyPage.path,
      //   builder: (context, state) => RegisterFamily(
      //     familySignUpType: state.uri.queryParameters['page'],
      //   ),
      // ),
    ],
    observers: [
      getIt.get<MyTalker>().talkerRouteObserver,
    ],
  );
}
