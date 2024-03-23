import 'package:budget_tracker/themes/app_colors.dart';
import 'package:budget_tracker/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

//Класс, через который в MaterialApp можем получить любую тему
class AppThemes {
  final _appLightColors = AppLightColors();
  final _appDarkColors = AppDarkColors();
  late final _appLightTextStyles =
      AppTextStylesRealization(colors: _appLightColors);
  late final _appDarkTextStyles =
      AppTextStylesRealization(colors: _appDarkColors);

  //Метод для получения светлой темы
  ThemeData lightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
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

  ThemeData darkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      splashColor: Colors.transparent,
      focusColor: Colors.black.withOpacity(0.1),
      hoverColor: Colors.black.withOpacity(0.1),
      highlightColor: Colors.black.withOpacity(0.1),
      extensions: [
        _appDarkColors,
        _appDarkTextStyles,
      ],
    );
  }
}
