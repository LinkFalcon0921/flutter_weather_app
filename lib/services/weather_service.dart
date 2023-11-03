import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/geolocation_model.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  static const base_url_api_weather_general =
      'https://pro.openweathermap.org/data/2.5/weather';

  static const base_url_api_weather_geolocation =
      'https://pro.openweathermap.org/data/2.5/forecast/hourly';

  final String _apiKey;

  WeatherService(this._apiKey);

  Future<Weather> getWeather(final String cityName) async {
    final response = await http.get(Uri.parse(
        '$base_url_api_weather_general?q=$cityName&APPID=$_apiKey&units=metric'));

    // If the data fails
    if (response.statusCode != 200) {
      // TODO Create an last weather found object later.
      throw Exception('Failed to load the actual weather data.');
    }

    return Weather.fromJson(jsonDecode(response.body));
  }

  Future<Weather> getWeatherByGeolocation(final Geolocation? location) async {
    if (location == null) return Weather.getDefaultWeather();

    try {
      // Check city
      final response = await http.get(Uri.parse(
          '$base_url_api_weather_general?lat=${location.lat}&lon=${location.lon}'
          '&APPID=$_apiKey&units=metric'));

      // If the data fails
      if (response.statusCode != 200) {
        // TODO Create an last weather found object later.
        return Weather.getDefaultWeather();
      }

      return Weather.fromJson(jsonDecode(response.body));
    } catch (e) {
      print(e);
    }

    return Weather.getDefaultWeather();
  }
}
