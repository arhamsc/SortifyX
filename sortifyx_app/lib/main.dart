// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:sortifyx_app/config/config.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/features/auth/application/cubits/auth_form_cubit/auth_form_cubit.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/cubits/modal_cubit/modal_cubit.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  runZonedGuarded(
    () async {
      /* App Configs */
      WidgetsFlutterBinding.ensureInitialized();
      final appConfig = AppConfig();

      //*Order matters
      await appConfig.loadEnv();

      await configureGetItDependencies();

      //Bloc observer is being assigned after the getIt configures the bloc, so if the blocs aren't lazySingleton then the observer will not work.
      await appConfig.configureBloc();

      getIt.get<MyTalker>().talker.log(Bloc.observer);

      FlutterError.onError = (FlutterErrorDetails errorDetails) {
        getIt.get<MyTalker>().talker.handle(errorDetails.exception,
            errorDetails.stack, 'Uncaught app exception by talker.');
      };
      Animate.restartOnHotReload = true;

      runApp(
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
    super.key,
  });

  final AppRouter _appRouter = getIt.get();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt.get<AuthFormCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<UserBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<FamilyBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<ModalCubit>(),
        ),
      ],
      child: ResponsiveSizer(
        builder: (context, _, __) => ReactiveFormConfig(
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
            builder: (_, child) => wrapWithOverlay(
              builder: (_) => child ?? const Scaffold(),
            ),
            theme: ThemeData(
              primarySwatch: Palette.primaryDefault,
              textTheme: CustomTypography.textTheme,
              scaffoldBackgroundColor: Palette.lightBG,
              iconTheme: IconThemeData(color: Palette.tertiaryDefault),
              extensions: <ThemeExtension<dynamic>>[
                CustomTheme.lightThemePalette,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
