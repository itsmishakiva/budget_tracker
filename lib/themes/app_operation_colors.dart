import 'dart:convert';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EmojiStorageManager {

  Future<bool> hasEmoji() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String check = prefs.getString('filled') ?? '';
    if (check != null) return true;
    else return false;
  }

  Color generateRandomColor() {
    Random random = Random();

    double hue = random.nextDouble();

    double saturation = 0.05 + random.nextDouble() * 0.1; // Насыщенность в диапазоне 0.05 - 0.15
    double brightness = 0.95 + random.nextDouble() * 0.05; // Яркость в диапазоне 0.95 - 1.0
    print(ColorConverter.colorToString(HSVColor.fromAHSV(1.0, hue * 360.0, saturation, brightness).toColor()));

    return HSVColor.fromAHSV(1.0, hue * 360.0, saturation, brightness).toColor();
  }


  Future<void> saveColors(Color color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("Home", generateRandomColor().toString());
    await prefs.setString("Health", generateRandomColor().toString());
    await prefs.setString("Food", generateRandomColor().toString());
    await prefs.setString("Gifts", generateRandomColor().toString());
    await prefs.setString("Travels", generateRandomColor().toString());
    await prefs.setString("Family", generateRandomColor().toString());
    await prefs.setString("Education", generateRandomColor().toString());
    await prefs.setString("Shop", generateRandomColor().toString());
    await prefs.setString("Other", generateRandomColor().toString());
    await prefs.setString("filled", "yes");
  }

  // Future<Color> loadColor(String) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return (prefs.getString(String)).toColor() ?? '';
  // }

  Future<String> loadDepartureAirplane() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('departure_airplane') ?? '';
  }

  Future<void> saveDepartureAirplane(String emoji) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('departure_airplane', emoji);
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

