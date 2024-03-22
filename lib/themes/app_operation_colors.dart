import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ColorStorageManager {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<bool> hasColor() async {
    final SharedPreferences prefs = await _prefs;
    String? check = prefs.getString('filled');
    return (check != null);
  }

  String generateRandomColor() {
    Random random = Random();

    double hue = random.nextDouble();

    double saturation = 0.05 +
        random.nextDouble() * 0.1; // Насыщенность в диапазоне 0.05 - 0.15
    double brightness =
        0.95 + random.nextDouble() * 0.05; // Яркость в диапазоне 0.95 - 1.0

    return ColorConverter.colorToString(
      HSVColor.fromAHSV(1.0, hue * 360.0, saturation, brightness).toColor(),
    );
  }

  Future<void> saveColors() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('Home', generateRandomColor());
    await prefs.setString('Health', generateRandomColor());
    await prefs.setString('Food', generateRandomColor());
    await prefs.setString('Gifts', generateRandomColor());
    await prefs.setString('Travels', generateRandomColor());
    await prefs.setString('Family', generateRandomColor());
    await prefs.setString('Education', generateRandomColor());
    await prefs.setString('Shop', generateRandomColor());
    await prefs.setString('Other', generateRandomColor());
    await prefs.setString('filled', 'yes');
  }

  Future<Color> loadColor(String name) async {
    final SharedPreferences prefs = await _prefs;
    String color = prefs.getString(name) ?? generateRandomColor();
    return ColorConverter.stringToColor(color);
  }
}

class ColorConverter {
  static String colorToString(Color color) {
    return color.value.toRadixString(16).padLeft(8, '0');
  }

  static Color stringToColor(String colorString) {
    int value = int.parse(colorString, radix: 16);
    return Color(value).withAlpha(255);
  }
}
