// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sizer/sizer.dart';

import 'package:sortifyx_app/config/config.dart';
import 'package:sortifyx_app/features/family_auth/application/cubits/auth_form_cubit/auth_form_cubit.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appConfig = AppConfig();

  await appConfig.configureBloc();
  final appRouter = AppRouter();
  Animate.restartOnHotReload = true;

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
    return Sizer(
      builder: (context, _, __) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => AuthFormCubit(),
            ),
          ],
          child: ReactiveFormConfig(
            validationMessages: {
              ValidationMessage.required: (_) =>
                  "Don't forget to enter a value here.",
              ValidationMessage.email: (_) =>
                  "Make sure you use a valid email format.",
              ValidationMessage.maxLength: (error) =>
                  "Must be max ${(error as Map)['requiredLength']} characters.",
              ValidationMessage.minLength: (error) =>
                  "Must be minimum ${(error as Map)['requiredLength']} characters.",
              ValidationMessage.number: (_) =>
                  "Make sure you enter a valid number.",
              ValidationMessage.mustMatch: (_) => "Field doesn't match.",
              ValidationMessage.pattern: (_) =>
                  "Field doesn't match the required rules."
            },
            child: MaterialApp.router(
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
            ),
          ),
        );
      },
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
