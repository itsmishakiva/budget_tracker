import 'package:flutter/material.dart';

//Реализация цветов светлой темы
class AppLightColors extends AppColors {
  AppLightColors()
      : super(
          backgroundPrimary: const Color(0xFFE3E3E3),
          backgroundSecondary: const Color(0xFFC4C4C4),
          borderPrimary: const Color(0xFF2A2A2A),
          borderSecondary: const Color(0xFF444444),
          textPrimary: const Color(0x00000000),
          textSecondary: const Color(0xFF3F3F3F),
          button: const Color(0xFF485CA2),
          error: const Color(0xFFA93A3A),
        );
}

//Этот класс должны наследовать все реализации цветов для разных тем.
class AppColors extends ThemeExtension<AppColors> {
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color borderPrimary;
  final Color borderSecondary;
  final Color textPrimary;
  final Color textSecondary;
  final Color button;
  final Color error;

  const AppColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.borderPrimary,
    required this.borderSecondary,
    required this.textPrimary,
    required this.textSecondary,
    required this.button,
    required this.error,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? borderPrimary,
    Color? borderSecondary,
    Color? textPrimary,
    Color? textSecondary,
    Color? button,
    Color? error,
  }) {
    return AppColors(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      borderPrimary: borderPrimary ?? this.borderPrimary,
      borderSecondary: borderSecondary ?? this.borderSecondary,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      button: button ?? this.button,
      error: error ?? this.error,
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
      borderPrimary: Color.lerp(borderPrimary, typedOther.borderPrimary, t)!,
      borderSecondary:
          Color.lerp(borderSecondary, typedOther.borderSecondary, t)!,
      textPrimary: Color.lerp(textPrimary, typedOther.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, typedOther.textSecondary, t)!,
      button: Color.lerp(button, typedOther.button, t)!,
      error: Color.lerp(error, typedOther.error, t)!,
    );
  }
}
