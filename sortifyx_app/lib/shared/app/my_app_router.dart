/*
GoRoute(
   name: 'song',
   path: 'songs/:songId',
   builder: /* ... */,
 ),

 GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Page1Screen(),
    ),
    GoRoute(
      path: '/page2',
      builder: (context, state) => const Page2Screen(),
    ),
  ],
);

GoRoute(
  path: '/users',
  builder: (context, state) => const UsersScreen(filter: state.queryParameters['filter']),
),

GoRoute(
  path: '/users/:userId',
  builder: (context, state) => const UserScreen(id: state.pathParameters['userId']),
),
 */

import 'package:go_router/go_router.dart';
import 'package:sortifyx_app/features/family_auth/presentation/screens/screens.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: RouteDetails.authPage.path,
    routes: [
      GoRoute(
        name: RouteDetails.authPage.name,
        path: RouteDetails.authPage.path,
        builder: (context, state) => const AuthPage(),
      )
    ],
    observers: [
      MyTalker.instance.talkerRouteObserver,
    ],
  );
}
