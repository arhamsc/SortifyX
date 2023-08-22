// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../../shared/app/app.dart';
import '../../../../shared/utils/utils.dart';
import '../../../../shared/widgets/widgets.dart';
import '../../application/cubits/cubits.dart';
import '../widgets/widgets.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with TickerProviderStateMixin {
  AuthStep authStep = AuthStep.login;

  late AnimationController _opacityController;
  late Animation<double> _opacityAnimation;
  late FormGroup authForm;
  late Widget _formWidget;

  void changeAuthMode(AuthStep step) {
    setState(() {
      authStep = step;
    });

    if (authStep == AuthStep.signUp) {
      _opacityController.forward().then((value) {
        _formWidget = SignupForm(
          onToggleAuth: () => changeAuthMode(AuthStep.login),
          onNext: () => changeAuthMode(AuthStep.username),
        ); //Go to login
      });
    } else if (authStep == AuthStep.login) {
      _opacityController.reverse();
      _formWidget =
          LoginForm(onToggleAuth: () => changeAuthMode(AuthStep.signUp));
    } else if (authStep == AuthStep.username) {
      _opacityController.reverse();
      _formWidget = UsernameForm(
        onGoBack: () => changeAuthMode(AuthStep.signUp),
        onGoToLogin: () => changeAuthMode(AuthStep.login),
      );
    }
  }

  @override
  void initState() {
    _formWidget =
        LoginForm(onToggleAuth: () => changeAuthMode(AuthStep.signUp));
    _opacityController = AnimationController(
      vsync: this,
      duration: 300.ms,
    );
    _opacityAnimation =
        Tween<double>(begin: 1.0, end: 0.0).animate(_opacityController);
    _opacityAnimation.addListener(() => setState(() {}));

    Future.delayed(Duration.zero, () {
      authForm = context.read<AuthFormCubit>().state.loginForm;
    });
    super.initState();
  }

  @override
  void dispose() {
    _opacityAnimation.removeListener(() => setState(() {}));
    _opacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Stack(
          children: [
            KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) {
                return AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  height: (isKeyboardVisible || authStep == AuthStep.signUp)
                      ? 100.h
                      : 40.h,
                  curve: Curves.easeInOut,
                  child: GlassBgAnimation(
                    width: 100.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBoxSeparator(
                          height: getHeight(56),
                        ),
                        AnimatedSize(
                          duration: 500.ms,
                          child: SizedBox(
                            height: authStep == AuthStep.signUp ? 0.0 : null,
                            child: FadeTransition(
                              opacity: _opacityAnimation,
                              child: Column(
                                children: [
                                  AssetImageContainer(
                                    assetPath: "assets/images/AlmadarLogo.png",
                                    height: getHeight(127),
                                    width: getWidth(127),
                                  ),
                                  SizedBoxSeparator(
                                    height: getHeight(56),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        AnimatedAlign(
                          duration: 500.ms,
                          alignment: !(authStep == AuthStep.signUp)
                              ? Alignment.bottomCenter
                              : Alignment.topCenter,
                          child: AssetImageContainer(
                            assetPath: 'assets/images/SCALogo.svg',
                            width: getWidth(130),
                            height: getHeight(56),
                            isSvg: true,
                          ),
                        )
                      ],
                    ).animate(target: isKeyboardVisible ? 0 : 1).fade(
                          end: 1,
                          begin: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                );
              },
            ),
            /* FORM BLOC BUILDER */
            Positioned(
              bottom: 0,
              child: AnimatedContainer(
                duration: 500.ms,
                height: authStep == AuthStep.signUp ? 80.h : 62.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.sp),
                  ),
                  border: Border.all(
                    color: colors(context).tertiaryDefault!.withOpacity(0.13),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      colors(context).secondaryDefault!,
                      Colors.white.withOpacity(0.05),
                    ],
                  ),
                ),
                /* AUTH FORM */
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getHeight(50),
                      ),
                      child: StrokeTextVTitle(
                        text: authStep == AuthStep.signUp
                            ? "Sign Up"
                            : authStep == AuthStep.username
                                ? "Set Username"
                                : "Login",
                      ),
                    ),
                    SizedBox(
                      width: getWidth(304),
                      child: AnimatedSwitcher(
                        duration: 600.ms,
                        child: _formWidget,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
