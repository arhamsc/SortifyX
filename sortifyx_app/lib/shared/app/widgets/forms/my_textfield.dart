// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sortifyx_app/shared/app/theme/app_theme.dart';
import 'package:sortifyx_app/shared/app/theme/custom_decorations.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';
import 'package:sortifyx_app/shared/app/widgets/widgets.dart';

class MyTextfield<T> extends StatelessWidget {
  const MyTextfield({
    super.key,
    this.width,
    this.height,
    required this.label,
    required this.hintText,
    this.halfWidth,
    this.variant = 1,
    required this.formFieldName,
    this.hideText,
    this.validationMessages,
    this.suffixIcon,
  });
  final double? width;
  final double? height;
  final String label;
  final String hintText;
  final bool? halfWidth;
  final int variant;
  final String formFieldName;
  final bool? hideText;
  final Map<String, String Function(Object)>? validationMessages;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label.isNotEmpty)
            Text(
              label,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: variant == 2
                        ? colors(context).tertiaryDefault
                        : colors(context).lightBG,
                  ),
            ),
          if (label.isNotEmpty)
            SizedBoxSeparator(
              height: getHeight(10),
            )
          else
            SizedBoxSeparator(
              height: getHeight(4),
            ),
          ReactiveTextField<T>(
            formControlName: formFieldName,
            obscureText: hideText ?? false,
            style: variant == 2
                ? Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: colors(context).lightBG,
                    )
                : Theme.of(context).textTheme.displayMedium,
            validationMessages: validationMessages,
            decoration: variant == 2
                ? CustomDecorations.inputDecorationVariant2(
                    context,
                    hintText: hintText,
                    suffixIcon: suffixIcon,
                  )
                : CustomDecorations.inputDecoration(
                    context,
                    hintText: hintText,
                    suffixIcon: suffixIcon,
                  ),
          ),
        ],
      ),
    );
  }
}
