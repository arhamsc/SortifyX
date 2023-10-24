import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:sizer/sizer.dart';

import '../../../../shared/app/app.dart';

class GlassBgAnimation extends StatelessWidget {
  const GlassBgAnimation({
    super.key,
    this.width,
    this.height,
    this.child,
  });
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
