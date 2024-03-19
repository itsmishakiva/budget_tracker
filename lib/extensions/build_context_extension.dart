import 'package:budget_tracker/themes/app_colors.dart';
import 'package:budget_tracker/themes/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

//Тут экстеншен на context, чтобы удобнее получать инстансы
//inherited виджетов через контекст
extension ThemeExtensions on BuildContext {
  //Можно юзать context.colors вместо Theme.of(context).extension<AppColors>
  AppColors get colors => Theme.of(this).extension<AppColors>()!;

  //context.textStyles вместо Theme.of(context).extension<AppTextStyles>
  AppTextStyles get textStyles => Theme.of(this).extension<AppTextStyles>()!;

  //context.locale вместо AppLocalizations.of(context)
  AppLocalizations? get locale => AppLocalizations.of(this);
}
