// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:sortifyx_app/config/config.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appConfig = AppConfig();

  await appConfig.configureBloc();
  final appRouter = AppRouter();

  runZonedGuarded(
    () => runApp(
      MyApp(
        appRouter: appRouter,
      ),
    ),
    (
      Object error,
      StackTrace stack,
    ) {
      MyTalker.instance.talker.handle(error, stack, 'Uncaught app exception');
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(key: key);

  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SortifyX',
      routerConfig: _appRouter.router,
      theme: ThemeData(
        primarySwatch: Palette.primaryDefault,
        textTheme: CustomTypography.textTheme,
        scaffoldBackgroundColor: Palette.lightBG,
        extensions: <ThemeExtension<dynamic>>[
          CustomTheme.lightThemePalette,
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("SortifyX")),
    );
  }
}
