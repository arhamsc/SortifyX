import 'package:flutter/material.dart';
import 'package:sortifyx_app/shared/app/app_theme.dart';

class StrokeTextVTitle extends StatelessWidget {
  final String text;
  const StrokeTextVTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //to get white on fill and dark border
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: colors(context).lightBG,
              ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 0.5
                  ..color = colors(context).tertiaryDefault!,
              ),
        ),
      ],
    );
  }
}
