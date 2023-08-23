import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:sizer/sizer.dart';

import '../../../../shared/app/app.dart';
import '../../../../shared/utils/utils.dart';
import '../../../../shared/widgets/widgets.dart';
import '../widgets/widgets.dart';

class RegisterFamily extends StatelessWidget {
  RegisterFamily({super.key, required this.familySignUpType, this.onGoBack})
      : isRegisterFamily = familySignUpType == "register";

  final String familySignUpType;

  late bool isRegisterFamily;
  final Function()? onGoBack;
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
                  height: (isKeyboardVisible) ? 100.h : 40.h,
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
                        Column(
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
                        AssetImageContainer(
                          assetPath: 'assets/images/SCALogo.svg',
                          width: getWidth(130),
                          height: getHeight(56),
                          isSvg: true,
                        ),
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
            Positioned(
              bottom: 0,
              child: Container(
                height: 62.h,
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
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getHeight(50),
                      ),
                      child: StrokeTextVTitle(
                        text: isRegisterFamily
                            ? "Register Family"
                            : "Join a Family",
                      ),
                    ),
                    SizedBoxSeparator(
                      height: getHeight(60),
                    ),
                    SizedBox(
                      width: getWidth(304),
                      child: isRegisterFamily
                          ? RegisterFamilyForm(onGoBack: onGoBack)
                          : JoinFamilyForm(onGoBack: onGoBack),
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
