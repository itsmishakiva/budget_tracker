import 'package:budget_tracker/themes/app_colors.dart';
import 'package:budget_tracker/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;

  AppTextStyles get textStyles => Theme.of(this).extension<AppTextStyles>()!;
}
