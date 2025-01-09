import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF332E21);
  static const Color grey = Color(0xFF3A5160);

  static const Color darkText = Color(0xFF457b3b);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'WorkSans';

}

ThemeData greenTheme = FlexThemeData.light(
  scheme: FlexScheme.green,
  useMaterial3: true,
);

ThemeData darkGreenTheme = FlexThemeData.dark(
  scheme: FlexScheme.green,
  useMaterial3: true,
);
