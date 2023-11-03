import 'package:flutter/material.dart';
import 'package:weather_app/pages/weather_main_page.dart';
import 'package:weather_app/themes/theme.dart';
import 'package:weather_app/themes/theme_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherMainPage(),
      theme: lightMode.copyWith(textTheme: textLightStyle),
      darkTheme: darkMode.copyWith(textTheme: textDarkStyle),
    );
  }
}
