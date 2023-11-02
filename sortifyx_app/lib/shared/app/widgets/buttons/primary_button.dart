// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app.dart';
import '../../../utils/utils.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.variant = 1,
    this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.disabled = false,
    this.elevation,
    this.labelWidget,
    this.isLoading = false,
    this.isSuccess = false,
  });
  final int variant;
  final Function()? onPressed;
  final String label;
  final double? width;
  final double? height;
  final bool disabled;
  final double? elevation;
  final Widget? labelWidget;
  final bool isLoading;
  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? getHeight(45),
      width: width,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 0,
          padding: width == null && height == null
              ? EdgeInsets.symmetric(
                  horizontal: getWidth(120),
                  vertical: getHeight(5),
                )
              : null,
          foregroundColor: colors(context).lightBG,
          backgroundColor: variant == 2
              ? colors(context).tertiaryDefault
              : colors(context).primaryDefault,
          textStyle: Theme.of(context).textTheme.titleMedium,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: variant == 2
                  ? colors(context).secondaryDefault!
                  : colors(context).tertiaryDefault!,
              width: 1.sp,
            ),
            borderRadius: BorderRadius.circular(
              6.sp,
            ),
          ),
        ),
        child: labelWidget ??
            (FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                label,
              ),
            )),
      ),
    );
  }
}
