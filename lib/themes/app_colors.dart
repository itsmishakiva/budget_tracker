import 'package:flutter/material.dart';

// Реализация цветов светлой темы
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
          errorLight: const Color(0xFFFDE8E8),
          success: const Color(0xFF02C46D),
          successLight: const Color(0xFFE8FDEA),
        );
}

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
  final Color errorLight;
  final Color success;
  final Color successLight;

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
    required this.errorLight,
    required this.success,
    required this.successLight,
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
    Color? errorLight,
    Color? success,
    Color? successLight,
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
      errorLight: errorLight ?? this.errorLight,
      success: success ?? this.success,
      successLight: successLight ?? this.successLight,
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
      errorLight: Color.lerp(errorLight, typedOther.errorLight, t)!,
      success: Color.lerp(success, typedOther.success, t)!,
      successLight: Color.lerp(successLight, typedOther.successLight, t)!,
    );
  }
}
