import 'package:flutter/material.dart';

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
          dateLight: const Color(0xFFD9DAEA),
          dateDark: const Color(0xFFAAACC2),
          textSurface: const Color(0xFFFFFFFF),
          error: const Color(0xFFFF4B4C),
          errorLight: const Color(0xFFFDE8E8),
          success: const Color(0xFF02C46D),
          successLight: const Color(0xFFE8FDEA),
          textSubtitile: const Color(0xFFB4B4B4),
          linearChart1: const Color(0xFFFFD1F0),
          linearChart2: const Color(0xFFCEFFF8),
          graphColors: const [
            Color(0xFF3600FA),
            Color(0xFF9E00FA),
            Color(0xFF00D5FA),
            Color(0xFFFA00C8),
            Color(0xFFFA9600),
          ],
          graphDarkColors: const [
            Color(0xFF210091),
            Color(0xFF6500A1),
            Color(0xFF009EBD),
            Color(0xFFC00098),
            Color(0xFFB76E00),
          ],
        );
}

class AppDarkColors extends AppColors {
  AppDarkColors()
      : super(
          backgroundPrimary: const Color(0xFF131313),
          backgroundSecondary: const Color(0xFF1F1F1F),
          disabled: const Color(0xFF4B4B4B),
          accent: const Color(0xFF244DE0),
          accentSecondary: const Color(0xFF4359A8),
          textPrimary: const Color(0xFFD2C9E5),
          textSecondary: const Color(0xFF817F80),
          dateLight: const Color(0xFFD9DAEA),
          dateDark: const Color(0xFFAAACC2),
          textSurface: const Color(0xFFFFFFFF),
          error: const Color(0xFFBB3334),
          errorLight: const Color(0xFFB76868),
          success: const Color(0xFF009356),
          successLight: const Color(0xFF69A26F),
          textSubtitile: const Color(0xFF4D4D4D),
          linearChart1: const Color(0xFFFF00AD),
          linearChart2: const Color(0xFF00FFD8),
          graphColors: const [
            Color(0xFF3600FA),
            Color(0xFF9E00FA),
            Color(0xFF00D5FA),
            Color(0xFFFA00C8),
            Color(0xFFFA9600),
          ],
          graphDarkColors: const [
            Color(0xFF210091),
            Color(0xFF6500A1),
            Color(0xFF009EBD),
            Color(0xFFC00098),
            Color(0xFFB76E00),
          ],
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
  final Color dateLight;
  final Color dateDark;
  final Color textSurface;
  final Color error;
  final Color errorLight;
  final Color success;
  final Color successLight;
  final Color textSubtitile;
  final Color linearChart1;
  final Color linearChart2;
  final List<Color> graphColors;
  final List<Color> graphDarkColors;

  const AppColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.disabled,
    required this.accent,
    required this.accentSecondary,
    required this.textPrimary,
    required this.textSecondary,
    required this.dateLight,
    required this.dateDark,
    required this.textSurface,
    required this.error,
    required this.errorLight,
    required this.success,
    required this.successLight,
    required this.textSubtitile,
    required this.linearChart1,
    required this.linearChart2,
    required this.graphColors,
    required this.graphDarkColors,
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
    Color? dateLight,
    Color? dateDark,
    Color? error,
    Color? errorLight,
    Color? success,
    Color? successLight,
    Color? textSubtitile,
    Color? linearChart1,
    Color? linearChart2,
    List<Color>? graphColors,
    List<Color>? graphDarkColors,
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
      dateLight: dateLight ?? this.dateLight,
      dateDark: dateDark ?? this.dateDark,
      error: error ?? this.error,
      errorLight: errorLight ?? this.errorLight,
      success: success ?? this.success,
      successLight: successLight ?? this.successLight,
      textSubtitile: textSubtitile ?? this.textSubtitile,
      linearChart1: linearChart1 ?? this.linearChart1,
      linearChart2: linearChart2 ?? this.linearChart2,
      graphColors: graphColors ?? this.graphColors,
      graphDarkColors: graphDarkColors ?? this.graphDarkColors,
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
      dateLight: Color.lerp(dateLight, typedOther.dateLight, t)!,
      dateDark: Color.lerp(dateDark, typedOther.dateDark, t)!,
      textSurface: Color.lerp(textSurface, typedOther.textSurface, t)!,
      error: Color.lerp(error, typedOther.error, t)!,
      errorLight: Color.lerp(errorLight, typedOther.errorLight, t)!,
      success: Color.lerp(success, typedOther.success, t)!,
      successLight: Color.lerp(successLight, typedOther.successLight, t)!,
      textSubtitile: Color.lerp(textSubtitile, typedOther.textSubtitile, t)!,
      linearChart1: Color.lerp(linearChart1, typedOther.linearChart1, t)!,
      linearChart2: Color.lerp(linearChart2, typedOther.linearChart2, t)!,
      graphColors: graphColors.map((color) {
        final int index = graphColors.indexOf(color);
        return Color.lerp(color, typedOther.graphColors[index], t)!;
      }).toList(),
      graphDarkColors: graphDarkColors.map((color) {
        final int index = graphDarkColors.indexOf(color);
        return Color.lerp(color, typedOther.graphDarkColors[index], t)!;
      }).toList(),
    );
  }
}
