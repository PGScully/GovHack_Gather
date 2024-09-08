import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

final class AppTheme {
  static final FlexSchemeColor _colourSchemeLight = FlexSchemeColor.from(
    primary: Colors.blue,
    brightness: Brightness.light,
  );

  static final FlexSchemeColor _colourSchemeDark = FlexSchemeColor.from(
    primary: Colors.blue,
    brightness: Brightness.dark,
  );

  static final FlexSchemeData _colorScheme = FlexSchemeData(
    name: 'Gather',
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
