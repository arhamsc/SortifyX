// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sizer/sizer.dart';

import 'package:sortifyx_app/config/config.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/features/auth/application/cubits/auth_form_cubit/auth_form_cubit.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

import 'features/auth/application/bloc/bloc.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /* App Configs */
      final appConfig = AppConfig();

      //*Order matters
      await appConfig.loadEnv();
      configureGetItDependencies();
      await appConfig.configureBloc();

      FlutterError.onError = (FlutterErrorDetails errorDetails) {
        getIt.get<MyTalker>().talker.handle(errorDetails.exception,
            errorDetails.stack, 'Uncaught app exception by talker.');
      };
      Animate.restartOnHotReload = true;

      return runApp(
        MyApp(),
      );
    },
    (
      error,
      stack,
    ) {
      getIt
          .get<MyTalker>()
          .talker
          .handle(error, stack, 'Uncaught app exception by talker.');
    },
  );
}

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  final AppRouter _appRouter = getIt.get();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => getIt.get<AuthFormCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt.get<UserBloc>(),
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
