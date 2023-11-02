

import 'dart:convert';

import 'package:weather_app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService{

  static const BASE_URL_API_WEATHER  = 'https://pro.openweathermap.org/data/2.5/weather';
  final String _apiKey;

  WeatherService(this._apiKey);

  Future<Weather> getWeather(final String cityName) async {
    final response = await http.get(
        Uri.parse('$BASE_URL_API_WEATHER?q=$cityName&APPID=$_apiKey&units=metric')
    );

    // If the data fails
    if(response.statusCode != 200){
      // TODO Create an last weather found object later.
      throw Exception('Failed to load the actual weather data.');
    }

    return Weather.fromJson(
        jsonDecode(response.body)
    );
  }

}