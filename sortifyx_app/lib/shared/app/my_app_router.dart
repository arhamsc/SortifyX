import 'package:go_router/go_router.dart';

import '../../features/documents/presentation/screens/screens.dart';
import '../../features/family_auth/presentation/screens/screens.dart';
import '../utils/utils.dart';
import 'app.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    // initialLocation: "${RouteDetails.authSignUpFamilyPage.path}?page=register",
    initialLocation: RouteDetails.authPage.path,
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
      MyTalker.instance.talkerRouteObserver,
    ],
  );
}
