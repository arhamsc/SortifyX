import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sortifyx_app/shared/app/theme/app_theme.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';

class CustomDecorations {
  static InputDecoration inputDecoration(
    BuildContext context, {
    String? hintText,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: Colors.black.withOpacity(0.38),
          ),
      errorMaxLines: 2,
      contentPadding: EdgeInsets.only(
        left: getWidth(10),
        top: getHeight(8),
        bottom: getHeight(8),
      ),
      filled: true,
      fillColor: colors(context).lightBG,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.sp),
        borderSide: BorderSide(
          color: colors(context).tertiaryDefault!,
          width: 1.sp,
        ),
      ),
      suffixIcon: suffixIcon,
    );
  }

  static InputDecoration inputDecorationVariant2(
    BuildContext context, {
    String? hintText,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: colors(context).lightBG,
          ),
      errorMaxLines: 2,
      contentPadding: EdgeInsets.only(
        left: getWidth(10),
        top: getHeight(8),
        bottom: getHeight(8),
      ),
      filled: true,
      fillColor: colors(context).tertiaryDefault,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.sp),
      ),
      suffixIcon: suffixIcon,
    );
  }
}
