import 'package:budget_tracker/themes/app_colors.dart';
import 'package:flutter/material.dart';

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
    bodyText1: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w300,
      fontSize: 14.0,
      color: colors.textPrimary,
    ),
    subtitle1: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
      color: colors.textPrimary,
    ),
    subtitle2: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      color: colors.textPrimary,
    ),
    textFieldLabel1: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      color: colors.textSecondary,
    ),
    textFieldLabel2: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w400,
      fontSize: 24.0,
      color: colors.textSecondary,
    ),
    onButton: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
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

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle header1;
  final TextStyle header2;
  final TextStyle bodyText1;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle textFieldLabel1;
  final TextStyle textFieldLabel2;
  final TextStyle onButton;
  final TextStyle error;

  const AppTextStyles({
    required this.header1,
    required this.header2,
    required this.bodyText1,
    required this.subtitle1,
    required this.subtitle2,
    required this.textFieldLabel1,
    required this.textFieldLabel2,
    required this.onButton,
    required this.error,
  });

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? header1,
    TextStyle? header2,
    TextStyle? bodyText1,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? textFieldLabel1,
    TextStyle? textFieldLabel2,
    TextStyle? onButton,
    TextStyle? error,
  }) {
    return AppTextStyles(
      header1: header1 ?? this.header1,
      header2: header2 ?? this.header2,
      bodyText1: bodyText1 ?? this.bodyText1,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2 ?? this.subtitle2,
      textFieldLabel1: textFieldLabel1 ?? this.textFieldLabel1,
      textFieldLabel2: textFieldLabel2 ?? this.textFieldLabel2,
      onButton: onButton ?? this.onButton,
      error: error ?? this.error,
    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
      covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other == null || other.runtimeType != AppTextStyles) {
      return this;
    }

    final AppTextStyles typedOther = other as AppTextStyles;

    return AppTextStyles(
      header1: TextStyle.lerp(header1, typedOther.header1, t)!,
      header2: TextStyle.lerp(header2, typedOther.header2, t)!,
      bodyText1: TextStyle.lerp(bodyText1, typedOther.bodyText1, t)!,
      subtitle1: TextStyle.lerp(subtitle1, typedOther.subtitle1, t)!,
      subtitle2: TextStyle.lerp(subtitle2, typedOther.subtitle2, t)!,
      textFieldLabel1:
      TextStyle.lerp(textFieldLabel1, typedOther.textFieldLabel1, t)!,
      textFieldLabel2:
      TextStyle.lerp(textFieldLabel2, typedOther.textFieldLabel2, t)!,
      onButton: TextStyle.lerp(onButton, typedOther.onButton, t)!,
      error: TextStyle.lerp(error, typedOther.error, t)!,
    );
  }
}