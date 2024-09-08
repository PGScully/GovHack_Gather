import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final FlexSchemeColor _colourSchemeLight = FlexSchemeColor.from(
    primary: Colors.blue.shade600,
    brightness: Brightness.light,
  );

  static final FlexSchemeColor _colourSchemeDark = FlexSchemeColor.from(
    primary: Colors.blue.shade400,
    brightness: Brightness.dark,
  );

  static final FlexSchemeData _colorScheme = FlexSchemeData(
    name: 'GovHack 2024',
    description: 'Definition of all colors',
    light: _colourSchemeLight,
    dark: _colourSchemeDark,
  );

  static ThemeData get light => FlexThemeData.light(
        colors: _colorScheme.light,
        useMaterial3: true,
      );

  static ThemeData get dark => FlexThemeData.dark(
        colors: _colorScheme.dark,
        useMaterial3: true,
      );
}
