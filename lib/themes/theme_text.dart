import 'package:flutter/material.dart';
import 'package:weather_app/themes/theme.dart';

// Light Text style
final textLightStyle = TextTheme(
  // Small Text Size
  bodySmall: TextStyle(
      color: lightMode.colorScheme.primary,
      fontSize: 27.0
  ),
  // Medium Text Size
  bodyMedium: TextStyle(
      color: lightMode.colorScheme.secondary,
      fontSize: 31.5
  ),
  // Large Text Size
  bodyLarge: TextStyle(
      color: lightMode.colorScheme.secondary,
      fontSize: 44.0
  ),
);

// Dark Text Style
final textDarkStyle = TextTheme(
  // Small Text Size
  bodySmall: TextStyle(
      color: darkMode.colorScheme.primary,
      fontSize: 27.0
  ),
  // Medium Text Size
  bodyMedium: TextStyle(
      color: darkMode.colorScheme.secondary,
      fontSize: 31.5
  ),
  // Large Text Size
  bodyLarge: TextStyle(
      color: darkMode.colorScheme.secondary,
      fontSize: 44.0
  ),
);
