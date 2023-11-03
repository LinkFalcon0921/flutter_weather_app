import 'package:flutter/material.dart';
import 'package:weather_app/themes/theme_text.dart';

// Light style
ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.grey.shade800,
      secondary: Colors.grey.shade700,
    ),
    textTheme: textLightStyle,
);

// Dark style
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      background: Colors.grey.shade700,
      primary: Colors.grey.shade200,
      secondary: Colors.grey.shade300),
  textTheme: textDarkStyle,
);