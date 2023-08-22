// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rive/rive.dart' as rive;
import 'package:sizer/sizer.dart';
import 'package:sortifyx_app/features/family_auth/application/cubits/cubits.dart';

import 'package:sortifyx_app/shared/app/app_theme.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';
import 'package:sortifyx_app/shared/widgets/buttons/primary_button.dart';
import 'package:sortifyx_app/shared/widgets/forms/my_textfield.dart';
import 'package:sortifyx_app/shared/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // late Animation<double> _animation;
  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    _controller = AnimationController(
      value: 1,
      // lowerBound: 40.h,
      // upperBound: 100.h,
      duration: const Duration(milliseconds: 150),
      reverseDuration: const Duration(milliseconds: 75),
      vsync: this,
    )..addStatusListener((AnimationStatus status) {
        setState(() {
          // setState needs to be called to trigger a rebuild because
          // the 'HIDE FAB'/'SHOW FAB' button needs to be updated based
          // the latest value of [_controller.status].
        });
      });

    var keyboardVisibilityController = KeyboardVisibilityController();

    // Subscribe
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      if (visible) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
    });
    super.initState();
  }

  bool get _isAnimationRunningForwardsOrComplete {
    switch (_controller.status) {
      case AnimationStatus.forward:
      case AnimationStatus.completed:
        return true;
      case AnimationStatus.reverse:
      case AnimationStatus.dismissed:
        return false;
    }
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GlassBgAnimation(
              width: 100.w,
              height: _controller.value == 0.0 ? 100.h : 40.h,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return FadeScaleTransition(
                    animation: _controller,
                    child: child,
                  );
                },
                child: Visibility(
                  // visible: !isKeyboardVisible,
                  visible: _controller.status != AnimationStatus.dismissed,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AssetImageContainer(
                        assetPath: "assets/images/AlmadarLogo.png",
                        height: getHeight(127),
                        width: getWidth(127),
                      ),
                      SizedBoxSeparator(
                        height: getHeight(56),
                      ),
                      AssetImageContainer(
                        assetPath: 'assets/images/SCALogo.svg',
                        width: getWidth(130),
                        height: getHeight(56),
                        isSvg: true,
                      ),
                    ],
                  ),
                ),
                // child: GlassBgAnimation(
                //   height: 40.h,
                //   width: 100.w,
                //   child:
                // ),
              ),
            ),
            /* FORM BLOC BUILDER */
            BlocBuilder<AuthFormCubit, AuthFormState>(
              builder: (context, authFormState) {
                return Positioned(
                  bottom: 0,
                  child: Container(
                    height: 62.h,
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
                    child: ReactiveFormBuilder(
                      form: () => authFormState.loginForm,
                      builder: (context, form, _) => Column(
                        children: [
                          PrimaryButton(
                            label: "EE",
                            onPressed: () {
                              print(_controller.value);
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: getHeight(50),
                            ),
                            child: const StrokeTextVTitle(
                              text: "Login",
                            ),
                          ),
                          SizedBox(
                            width: getWidth(304),
                            child: Column(
                              children: [
                                const MyTextfield(
                                  label: "Username",
                                  hintText: "username/email",
                                  formFieldName: "username",
                                  variant: 2,
                                ),
                                SizedBoxSeparator(
                                  height: getHeight(20),
                                ),
                                const MyTextfield(
                                  label: "Password",
                                  hintText: "password",
                                  formFieldName: "password",
                                  variant: 2,
                                ),
                                SizedBoxSeparator(
                                  height: getHeight(10),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Forgot Password?",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                  ),
                                ),
                                SizedBoxSeparator(
                                  height: getHeight(30),
                                ),
                                PrimaryButton(
                                  label: "Login",
                                  variant: 2,
                                  onPressed: () {},
                                ),
                                SizedBoxSeparator(
                                  height: getHeight(5),
                                ),
                                GestureDetector(
                                  child: Text.rich(
                                    TextSpan(
                                      text: "First Time? ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                      children: [
                                        TextSpan(
                                          text: "Sign Up",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall
                                              ?.copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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
