import 'package:flutter/material.dart';

//Реализация цветов светлой темы
class AppLightColors extends AppColors {
  AppLightColors()
      : super(
          backgroundPrimary: const Color(0xFFFFFFFF),
          backgroundSecondary: const Color(0xFFFAF9FF),
          disabled: const Color(0xFFE4E4E4),
          accent: const Color(0xFF3A60F3),
          accentSecondary: const Color(0xFF5779F7),
          textPrimary: const Color(0xFF4B425F),
          textSecondary: const Color(0xFFDEDADB),
          textSurface: const Color(0xFFFFFFFF),
          error: const Color(0xFFFF4B4C),
          success: const Color(0xFF02C46D),
        );
}

//Этот класс должны наследовать все реализации цветов для разных тем.
class AppColors extends ThemeExtension<AppColors> {
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color disabled;
  final Color accent;
  final Color accentSecondary;
  final Color textPrimary;
  final Color textSecondary;
  final Color textSurface;
  final Color error;
  final Color success;

  const AppColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.disabled,
    required this.accent,
    required this.accentSecondary,
    required this.textPrimary,
    required this.textSecondary,
    required this.textSurface,
    required this.error,
    required this.success,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? disabled,
    Color? accent,
    Color? accentSecondary,
    Color? textPrimary,
    Color? textSecondary,
    Color? textSurface,
    Color? error,
    Color? success,
  }) {
    return AppColors(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      disabled: disabled ?? this.disabled,
      accent: accent ?? this.accent,
      accentSecondary: accentSecondary ?? this.accentSecondary,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
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
      disabled: Color.lerp(disabled, typedOther.disabled, t)!,
      accent: Color.lerp(accent, typedOther.accent, t)!,
      accentSecondary:
          Color.lerp(accentSecondary, typedOther.accentSecondary, t)!,
      textPrimary: Color.lerp(textPrimary, typedOther.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, typedOther.textSecondary, t)!,
      textSurface: Color.lerp(textSurface, typedOther.textSurface, t)!,
      error: Color.lerp(error, typedOther.error, t)!,
      success: Color.lerp(success, typedOther.success, t)!,
    );
  }
}
