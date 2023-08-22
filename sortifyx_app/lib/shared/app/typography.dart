import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app.dart';


extension FigmaDimension on double {
  double toFigmaHeight(double fontSize) {
    return this / fontSize;
  }
}

class CustomTypography {
  static final TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(
      fontFamily: "FuturaCondensed",
      fontWeight: FontWeight.w900,
      fontSize: 18.sp,
      color: Palette.tertiaryDefault,
    ),
    titleMedium: TextStyle(
      fontFamily: 'FuturaCondensed',
      fontWeight: FontWeight.w900,
      fontSize: 14.sp,
      color: Palette.tertiaryDefault,
    ),
    titleSmall: TextStyle(
      fontFamily: 'FuturaCondensed',
      fontWeight: FontWeight.w900,
      fontSize: 12.sp,
      color: Palette.tertiaryDefault,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'FuturaCondensed',
      fontWeight: FontWeight.w900,
      fontSize: 10.sp,
      color: Palette.tertiaryDefault,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'FuturaCondensed',
      fontWeight: FontWeight.w900,
      fontSize: 8.sp,
      color: Palette.tertiaryDefault,
    ),
    displayLarge: TextStyle(
      fontFamily: 'FuturaBkBt',
      fontSize: 14.sp,
      color: Palette.tertiaryDefault,
      height: 27.0.toFigmaHeight(18),
    ),
    displayMedium: TextStyle(
      fontFamily: 'FuturaBkBt',
      fontSize: 12.sp,
      color: Palette.tertiaryDefault,
    ),
    displaySmall: TextStyle(
      fontFamily: 'FuturaBkBt',
      fontSize: 10.sp,
      color: Palette.tertiaryDefault,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'FuturaBkBt',
      fontSize: 8.sp,
      color: Palette.tertiaryDefault,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'FuturaBkBt',
      fontSize: 6.sp,
      color: Palette.tertiaryDefault,
    ),
  );
}
