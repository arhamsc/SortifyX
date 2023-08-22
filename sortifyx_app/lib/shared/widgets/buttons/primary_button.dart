// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:sortifyx_app/shared/app/app_theme.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.variant = 1,
    this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.disabled = false,
    this.elevation,
  }) : super(key: key);
  final int variant;
  final Function()? onPressed;
  final String label;
  final double? width;
  final double? height;
  final bool disabled;
  final double? elevation;

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
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,

            // style:  Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
