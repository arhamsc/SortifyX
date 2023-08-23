// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sizer/sizer.dart';
import 'package:sortifyx_app/shared/app/app_theme.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';
import 'package:sortifyx_app/shared/widgets/widgets.dart';

class MyTextfield<T> extends StatelessWidget {
  const MyTextfield({
    Key? key,
    this.width,
    this.height,
    required this.label,
    required this.hintText,
    this.halfWidth,
    this.variant = 1,
    required this.formFieldName,
    this.hideText,
  }) : super(key: key);
  final double? width;
  final double? height;
  final String label;
  final String hintText;
  final bool? halfWidth;
  final int variant;
  final String formFieldName;
  final bool? hideText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: variant == 2
                      ? colors(context).tertiaryDefault
                      : colors(context).lightBG,
                ),
          ),
          SizedBoxSeparator(
            height: getHeight(10),
          ),
          ReactiveTextField<T>(
            formControlName: formFieldName,
            obscureText: hideText ?? false,
            style: Theme.of(context).textTheme.displayMedium,
            decoration: InputDecoration(
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
                borderRadius: BorderRadius.circular(6.sp),
                borderSide: BorderSide(
                  color: colors(context).tertiaryDefault!,
                  width: 1.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
