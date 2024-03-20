import 'package:flutter/material.dart';

//Реализация цветов светлой темы
class AppLightColors extends AppColors {
  AppLightColors()
      : super(
          backgroundPrimary: const Color(0xFFFFFFFF),
          backgroundSecondary: const Color(0xFFFAF9FF),
          accent: const Color(0xFF3A60F3),
          accentSecondary: const Color(0xFF5779F7),
          textPrimary: const Color(0xFF4B425F),
          textSurface: const Color(0xFFFFFFFF),
          error: const Color(0xFFFF4B4C),
          success: const Color(0xFF02C46D),
        );
}

//Этот класс должны наследовать все реализации цветов для разных тем.
class AppColors extends ThemeExtension<AppColors> {
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color accent;
  final Color accentSecondary;
  final Color textPrimary;
  final Color textSurface;
  final Color error;
  final Color success;

  const AppColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.accent,
    required this.accentSecondary,
    required this.textPrimary,
    required this.textSurface,
    required this.error,
    required this.success,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? accent,
    Color? accentSecondary,
    Color? textPrimary,
    Color? textSurface,
    Color? error,
    Color? success,
  }) {
    return AppColors(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      accent: accent ?? this.accent,
      accentSecondary: accentSecondary ?? this.accentSecondary,
      textPrimary: textPrimary ?? this.textPrimary,
      textSurface: textSurface ?? this.textSurface,
      error: error ?? this.error,
      success: success ?? this.success,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other == null || other.runtimeType != AppColors) {
      return this;
    }

    final AppColors typedOther = other as AppColors;

    return AppColors(
      backgroundPrimary:
          Color.lerp(backgroundPrimary, typedOther.backgroundPrimary, t)!,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, typedOther.backgroundSecondary, t)!,
      accent: Color.lerp(accent, typedOther.accent, t)!,
      accentSecondary:
          Color.lerp(accentSecondary, typedOther.accentSecondary, t)!,
      textPrimary: Color.lerp(textPrimary, typedOther.textPrimary, t)!,
      textSurface: Color.lerp(textSurface, typedOther.textSurface, t)!,
      error: Color.lerp(error, typedOther.error, t)!,
      success: Color.lerp(success, typedOther.success, t)!,
    );
  }
}
