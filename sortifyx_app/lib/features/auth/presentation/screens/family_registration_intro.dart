import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../shared/app/app.dart';
import '../../../../shared/utils/utils.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class FamilyRegistrationIntro extends StatelessWidget {
  const FamilyRegistrationIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return RootScaffold(
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Stack(
          children: [
            const GlassBgAnimation(),
            SizedBox(
              width: 100.w,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(36),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AssetImageContainer(
                      assetPath: 'assets/images/SCALogo.svg',
                      width: getWidth(130),
                      height: getHeight(56),
                      isSvg: true,
                    ),
                    SizedBoxSeparator(
                      height: getHeight(73),
                    ),
                    AssetImageContainer(
                      assetPath: 'assets/images/undraw_family.svg',
                      width: getWidth(222),
                      height: getHeight(231),
                      isSvg: true,
                    ),
                    SizedBoxSeparator(
                      height: getHeight(40),
                    ),
                    SizedBox(
                      width: 100.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextTitleLarge(
                            text: "Family Registration",
                          ),
                          SizedBoxSeparator(
                            height: getHeight(10),
                          ),
                          Container(
                            width: 75.w,
                            padding: EdgeInsets.only(
                              left: getWidth(10),
                            ),
                            child: const TextDisplayLarge(
                              text:
                                  "This app allows you to share your uploads and texts with family so that everyone has access to the internal required data.",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBoxSeparator(
                      height: getHeight(20),
                    ),
                    const TextTitleSmall(text: "Register or Join a Family as"),
                    SizedBoxSeparator(
                      height: getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OpenContainer(
                          openElevation: 0,
                          closedElevation: 0,
                          closedBuilder: (context, action) => PrimaryButton(
                            label: "Head",
                            variant: 2,
                            width: 40.w,
                            onPressed: action,
                          ),
                          openBuilder: (context, actionClose) => RegisterFamily(
                            familySignUpType: "register",
                            onGoBack: actionClose,
                          ),
                        ),
                        OpenContainer(
                          openElevation: 0,
                          closedElevation: 0,
                          closedBuilder: (context, action) => PrimaryButton(
                            label: "Member",
                            variant: 2,
                            width: 40.w,
                            onPressed: action,
                          ),
                          openBuilder: (context, actionClose) => RegisterFamily(
                            familySignUpType: "join",
                            onGoBack: actionClose,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: getHeight(50),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
