// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextDisplayLarge extends StatelessWidget {
  const TextDisplayLarge({
    super.key,
    required this.text,
    this.style,
    this.textColor,
    this.alignment,
    this.softWrap,
  });
  final String text;
  final TextStyle? style;
  final Color? textColor;
  final TextAlign? alignment;
  final bool? softWrap;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: style ??
          Theme.of(context).textTheme.displayLarge?.copyWith(
                color: textColor,
              ),
      softWrap: softWrap ?? true,
      
    );
  }
}
