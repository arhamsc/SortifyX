// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

@immutable
class AppColorPalette extends ThemeExtension<AppColorPalette> {
  final Color? primaryDefault;
  final Color? secondaryDefault;
  final Color? tertiaryDefault;
  final Color? quaternaryDefault;
  final Color? lightBG;
  const AppColorPalette({
    required this.primaryDefault,
    required this.secondaryDefault,
    required this.tertiaryDefault,
    required this.quaternaryDefault,
    required this.lightBG,
  });

  @override
  AppColorPalette copyWith({
    Color? primaryDefault,
    Color? secondaryDefault,
    Color? tertiaryDefault,
    Color? quaternaryDefault,
    Color? lightBG,
  }) {
    return AppColorPalette(
      primaryDefault: primaryDefault ?? this.primaryDefault,
      secondaryDefault: secondaryDefault ?? this.secondaryDefault,
      tertiaryDefault: tertiaryDefault ?? this.tertiaryDefault,
      quaternaryDefault: quaternaryDefault ?? this.quaternaryDefault,
      lightBG: lightBG ?? this.lightBG,
    );
  }

  @override
  ThemeExtension<AppColorPalette> lerp(
      covariant ThemeExtension<AppColorPalette>? other, double t) {
    if (other is! AppColorPalette) {
      return this;
    }

    return AppColorPalette(
      primaryDefault: Color.lerp(primaryDefault, other.primaryDefault, t),
      secondaryDefault: Color.lerp(secondaryDefault, other.secondaryDefault, t),
      tertiaryDefault: Color.lerp(tertiaryDefault, other.tertiaryDefault, t),
      quaternaryDefault:
          Color.lerp(quaternaryDefault, other.quaternaryDefault, t),
      lightBG: Color.lerp(lightBG, other.lightBG, t),
    );
  }
}
