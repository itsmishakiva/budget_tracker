import 'package:budget_tracker/themes/app_colors.dart';
import 'package:flutter/material.dart';

//Реазлизация текстовых стилей светлой темы
class AppLightTextStyles extends AppTextStyles {
  AppLightTextStyles({
    required AppColors colors,
  }) : super(
          header1: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            fontSize: 24.0,
            color: colors.textPrimary,
          ),
          header2: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            fontSize: 20.0,
            color: colors.textPrimary,
          ),
          header3: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
            color: colors.textPrimary,
          ),
          headerSurface1: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            fontSize: 48.0,
            color: colors.textSurface,
          ),
          headerSurface2: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
            color: colors.textSurface,
          ),
          headerSurface3: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
            fontSize: 32.0,
            color: colors.textSurface,
          ),
          bodyTextSurface: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w200,
            fontSize: 20.0,
            color: colors.textSurface,
          ),
          bodyTextSurface1: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w200,
            fontSize: 14.0,
            color: colors.textSurface,
          ),
          bodyTextSurface2: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            color: colors.textSurface,
          ),
          textButton: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: colors.textPrimary,
          ),
          hint: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: colors.textSecondary,
          ),
          subtitle1: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
            color: colors.textSecondary,
          ),
          subtitle2: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            fontSize: 12.0,
            color: colors.textSecondary,
          ),
          onNumericButton: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            fontSize: 32.0,
            color: colors.textPrimary,
          ),
          onButton: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
            fontSize: 17.0,
            color: colors.textSecondary,
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
  final TextStyle header3;
  final TextStyle headerSurface1;
  final TextStyle headerSurface2;
  final TextStyle headerSurface3;
  final TextStyle bodyTextSurface;
  final TextStyle bodyTextSurface1;
  final TextStyle bodyTextSurface2;
  final TextStyle textButton;
  final TextStyle hint;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle onNumericButton;
  final TextStyle onButton;
  final TextStyle error;

  const AppTextStyles({
    required this.header1,
    required this.header2,
    required this.header3,
    required this.headerSurface1,
    required this.headerSurface2,
    required this.headerSurface3,
    required this.bodyTextSurface,
    required this.bodyTextSurface1,
    required this.bodyTextSurface2,
    required this.textButton,
    required this.hint,
    required this.subtitle1,
    required this.subtitle2,
    required this.onNumericButton,
    required this.onButton,
    required this.error,
  });

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? header1,
    TextStyle? header2,
    TextStyle? header3,
    TextStyle? headerSurface1,
    TextStyle? headerSurface2,
    TextStyle? headerSurface3,
    TextStyle? bodyTextSurface,
    TextStyle? bodyTextSurface1,
    TextStyle? bodyTextSurface2,
    TextStyle? textButton,
    TextStyle? hint,
    TextStyle? subtitle1,
    TextStyle? onNumericButton,
    TextStyle? onButton,
    TextStyle? error,
  }) {
    return AppTextStyles(
      header1: header1 ?? this.header1,
      header2: header2 ?? this.header2,
      header3: header3 ?? this.header3,
      headerSurface1: headerSurface1 ?? this.headerSurface1,
      headerSurface2: headerSurface2 ?? this.headerSurface2,
      headerSurface3: headerSurface3 ?? this.headerSurface3,
      bodyTextSurface: bodyTextSurface ?? this.bodyTextSurface,
      bodyTextSurface1: bodyTextSurface1 ?? this.bodyTextSurface1,
      bodyTextSurface2: bodyTextSurface2 ?? this.bodyTextSurface2,
      textButton: textButton ?? this.textButton,
      hint: hint ?? this.hint,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2,
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
      header3: TextStyle.lerp(header3, typedOther.header3, t)!,
      headerSurface1:
          TextStyle.lerp(headerSurface1, typedOther.headerSurface1, t)!,
      headerSurface2:
          TextStyle.lerp(headerSurface2, typedOther.headerSurface2, t)!,
      headerSurface3:
          TextStyle.lerp(headerSurface2, typedOther.headerSurface3, t)!,
      textButton: TextStyle.lerp(textButton, typedOther.textButton, t)!,
      hint: TextStyle.lerp(hint, typedOther.hint, t)!,
      subtitle1: TextStyle.lerp(subtitle1, typedOther.subtitle1, t)!,
      subtitle2: TextStyle.lerp(subtitle2, typedOther.subtitle2, t)!,
      bodyTextSurface:
          TextStyle.lerp(bodyTextSurface, typedOther.bodyTextSurface, t)!,
      bodyTextSurface1:
          TextStyle.lerp(bodyTextSurface1, typedOther.bodyTextSurface1, t)!,
      bodyTextSurface2:
          TextStyle.lerp(bodyTextSurface2, typedOther.bodyTextSurface2, t)!,
      onNumericButton:
          TextStyle.lerp(onNumericButton, typedOther.onNumericButton, t)!,
      onButton: TextStyle.lerp(onButton, typedOther.onButton, t)!,
      error: TextStyle.lerp(error, typedOther.error, t)!,
    );
  }
}
