import 'package:flutter/material.dart';
import '../utils/utils.dart';

class Palette {
  static MaterialColor primaryDefault =
      createMaterialColor(const Color(0xFFEF5B0C));
  static MaterialColor secondaryDefault =
      createMaterialColor(const Color(0xFFD4F6CC));
  static MaterialColor tertiaryDefault =
      createMaterialColor(const Color(0xFF003865));
  static MaterialColor quaternaryDefault =
      createMaterialColor(const Color(0xFF3CCF4E));
  static MaterialColor lightBG = createMaterialColor(
    Color.alphaBlend(
      const Color.fromRGBO(212, 246, 204, 0.2),
      const Color(0xFFFFFFFF),
    ),
  );
}
