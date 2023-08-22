// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rive/rive.dart' as rive;
import 'package:sizer/sizer.dart';
import 'package:sortifyx_app/features/family_auth/application/cubits/cubits.dart';
import 'package:sortifyx_app/features/family_auth/presentation/widgets/widgets.dart';

import 'package:sortifyx_app/shared/app/app_theme.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';
import 'package:sortifyx_app/shared/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with TickerProviderStateMixin {
  bool isSignUp = false;

  late AnimationController _opacityController;
  late Animation<double> _opacityAnimation;
  late FormGroup authForm;
  late Widget _formWidget;

  void toggleAuthMode() {
    setState(() {
      isSignUp = !isSignUp;
    });

    if (isSignUp) {
      _opacityController.forward().then((value) {
        _formWidget = SignupForm(onToggleAuth: toggleAuthMode);
      });
    } else {
      _opacityController.reverse();
      _formWidget = LoginForm(onToggleAuth: toggleAuthMode);
    }
  }

  @override
  void initState() {
    _formWidget = LoginForm(onToggleAuth: toggleAuthMode);
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
                  height: (isKeyboardVisible || isSignUp) ? 100.h : 40.h,
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
                            height: isSignUp ? 0.0 : null,
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
                          alignment: !isSignUp
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
            BlocBuilder<AuthFormCubit, AuthFormState>(
              builder: (context, authFormState) {
                return Positioned(
                  bottom: 0,
                  child: AnimatedContainer(
                    duration: 500.ms,
                    height: isSignUp ? 80.h : 62.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.sp),
                      ),
                      border: Border.all(
                        color:
                            colors(context).tertiaryDefault!.withOpacity(0.13),
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
                            text: isSignUp ? "Sign Up" : "Login",
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GlassBgAnimation extends StatelessWidget {
  const GlassBgAnimation({
    Key? key,
    this.width,
    this.height,
    this.child,
  }) : super(key: key);
  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.sp),
      ),
      child: Container(
        height: height,
        width: width,
        color: Colors.transparent,
        child: Stack(
          children: [
            const rive.RiveAnimation.asset(
              "assets/animations/sortify_x_bg_animation.riv",
              fit: BoxFit.cover,
              placeHolder: Text("Loading"),
            ),
            //Blur Effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(), //this will stretch the width to the parent
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(), //this will stretch the width to the parent
            ),
            //Gradient Effect
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: colors(context).tertiaryDefault!.withOpacity(0.13),
                  ),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colors(context).tertiaryDefault!.withOpacity(0.15),
                    Colors.white.withOpacity(0.05),
                  ],
                ),
              ),
            ),
            //Child
            if (child != null) SizedBox(width: 100.w, child: child!),
          ],
        ),
      ),
    );
  }
}
