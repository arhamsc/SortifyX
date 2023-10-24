// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextTitleSmall extends StatelessWidget {
  const TextTitleSmall({
    super.key,
    required this.text,
    this.style,
    this.textColor,
    this.alignment,
  });
  final String text;
  final TextStyle? style;
  final Color? textColor;
  final TextAlign? alignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: style ??
          Theme.of(context).textTheme.titleSmall?.copyWith(
                color: textColor,
              ),
    );
  }
}
