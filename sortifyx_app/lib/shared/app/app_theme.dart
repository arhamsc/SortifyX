import 'package:flutter/material.dart';
import 'package:sortifyx_app/shared/app/app.dart';

AppColorPalette colors(context) =>
    Theme.of(context).extension<AppColorPalette>()!;

class CustomTheme {
  static final lightThemePalette = AppColorPalette(
    primaryDefault: Palette.primaryDefault,
    secondaryDefault: Palette.secondaryDefault,
    tertiaryDefault: Palette.tertiaryDefault,
    quaternaryDefault: Palette.quaternaryDefault,
    lightBG: Palette.lightBG,
  );
}
