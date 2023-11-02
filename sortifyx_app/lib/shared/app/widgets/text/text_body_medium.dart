// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextBodyMedium extends StatelessWidget {
  const TextBodyMedium(
    this.text, {
    super.key,
    this.style,
    this.textColor,
    this.alignment,
    this.softWrap,
    this.fontWeight,
  });
  final String text;
  final TextStyle? style;
  final Color? textColor;
  final TextAlign? alignment;
  final bool? softWrap;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: style ??
          Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: textColor,
                fontWeight: fontWeight,
              ),
      softWrap: softWrap ?? true,
    );
  }
}
