import 'package:budget_tracker/themes/app_colors.dart';
import 'package:flutter/material.dart';

//Реазлизация текстовых стилей светлой темы
class AppLightTextStyles extends AppTextStyles {
  AppLightTextStyles({
    required AppColors colors,
  }) : super(
          header1: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: colors.textPrimary,
          ),
          header2: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
            color: colors.textPrimary,
          ),
          headerSurface1: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: colors.textPrimary,
          ),
          headerSurface2: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: colors.textPrimary,
          ),
          bodyTextSurface: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: colors.textPrimary,
          ),
          subtitle1: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: colors.textPrimary,
          ),
          onNumericButton: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: colors.textPrimary,
          ),
          onButton: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: colors.textPrimary,
          ),
          error: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            color: colors.error,
          ),
        );
}

//Этот класс должны наследовать все реализации текстовых стилей для разных тем.
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle header1;
  final TextStyle header2;
  final TextStyle headerSurface1;
  final TextStyle headerSurface2;
  final TextStyle bodyTextSurface;
  final TextStyle subtitle1;
  final TextStyle onNumericButton;
  final TextStyle onButton;
  final TextStyle error;

  const AppTextStyles({
    required this.header1,
    required this.header2,
    required this.headerSurface1,
    required this.headerSurface2,
    required this.bodyTextSurface,
    required this.subtitle1,
    required this.onNumericButton,
    required this.onButton,
    required this.error,
  });

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? header1,
    TextStyle? header2,
    TextStyle? headerSurface1,
    TextStyle? headerSurface2,
    TextStyle? subtitle1,
    TextStyle? onNumericButton,
    TextStyle? bodyTextSurface,
    TextStyle? onButton,
    TextStyle? error,
  }) {
    return AppTextStyles(
      header1: header1 ?? this.header1,
      header2: header2 ?? this.header2,
      headerSurface1: headerSurface1 ?? this.headerSurface1,
      headerSurface2: headerSurface2 ?? this.headerSurface2,
      bodyTextSurface: bodyTextSurface ?? this.bodyTextSurface,
      subtitle1: subtitle1 ?? this.subtitle1,
      onNumericButton: onNumericButton ?? this.onNumericButton,
      onButton: onButton ?? this.onButton,
      error: error ?? this.error,
    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
    covariant ThemeExtension<AppTextStyles>? other,
    double t,
  ) {
    if (other == null || other.runtimeType != AppTextStyles) {
      return this;
    }

    final AppTextStyles typedOther = other as AppTextStyles;

    return AppTextStyles(
      header1: TextStyle.lerp(header1, typedOther.header1, t)!,
      header2: TextStyle.lerp(header2, typedOther.header2, t)!,
      headerSurface1:
          TextStyle.lerp(headerSurface1, typedOther.headerSurface1, t)!,
      headerSurface2:
          TextStyle.lerp(headerSurface2, typedOther.headerSurface2, t)!,
      subtitle1: TextStyle.lerp(subtitle1, typedOther.subtitle1, t)!,
      bodyTextSurface:
          TextStyle.lerp(bodyTextSurface, typedOther.bodyTextSurface, t)!,
      onNumericButton:
          TextStyle.lerp(onNumericButton, typedOther.onNumericButton, t)!,
      onButton: TextStyle.lerp(onButton, typedOther.onButton, t)!,
      error: TextStyle.lerp(error, typedOther.error, t)!,
    );
  }
}
