import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sortifyx_app/shared/app/app.dart';

class CustomTypography {
  static final TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(
      fontFamily: "Futura",
      fontWeight: FontWeight.w900,
      fontSize: 18.sp,
      color: Palette.tertiaryDefault,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Futura',
      fontWeight: FontWeight.w900,
      fontSize: 14.sp,
      color: Palette.tertiaryDefault,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Futura',
      fontWeight: FontWeight.w900,
      fontSize: 12.sp,
      color: Palette.tertiaryDefault,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Futura',
      fontWeight: FontWeight.w900,
      fontSize: 10.sp,
      color: Palette.tertiaryDefault,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Futura',
      fontWeight: FontWeight.w900,
      fontSize: 8.sp,
      color: Palette.tertiaryDefault,
    ),
    displayLarge: TextStyle(
      fontFamily: 'FuturaBkBt',
      fontSize: 14.sp,
      color: Palette.tertiaryDefault,
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
