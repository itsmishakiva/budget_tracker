import 'package:budget_tracker/themes/app_colors.dart';
import 'package:budget_tracker/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  final _appLightColors = AppLightColors();
  late final _appLightTextStyles = AppLightTextStyles(colors: _appLightColors);

  ThemeData lightThemeData() {
    return ThemeData(
      splashColor: Colors.transparent,
      focusColor: Colors.black.withOpacity(0.1),
      hoverColor: Colors.black.withOpacity(0.1),
      highlightColor: Colors.black.withOpacity(0.1),
      extensions: [
        _appLightColors,
        _appLightTextStyles,
      ],
    );
  }
}
