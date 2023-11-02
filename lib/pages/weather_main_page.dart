import 'package:flutter/material.dart';
import 'package:weather_app/helpers/animators/lottie_animator.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/city_service.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherMainPage extends StatefulWidget {
  const WeatherMainPage({super.key});

  @override
  State<WeatherMainPage> createState() => _WeatherMainPageState();
}

class _WeatherMainPageState extends State<WeatherMainPage> {
  final WeatherService _weatherService;
  final CityService _cityService;
  final LottieAnimator _animator;

  Weather? _weather;

  _WeatherMainPageState()
      : _animator = LottieAnimator(),
        _cityService = CityService(),
  // TODO save the code in a external way
        _weatherService = WeatherService('fb61e126fbd2a933a9d0a8240427adb1');

  _fetchWeather() async {
    String currentCity = await _cityService.getCurrentCity();

    try {
      final weatherFound = await _weatherService.getWeather(currentCity);

      // Update the state
      setState(() {
        _weather = weatherFound;
      });
    } catch (ex) {
      // Send an modal
      print(ex);
    }
  }

  @override
  void initState() {
    super.initState();

    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // City name 
            Text(_weather?.cityName ?? "Loading city"),
            
            //Animation
            _animator.getAnimation(_weather?.weatherInfo.mainCondition ?? 'not_found'),
            
            // Temperature
            Text('${_weather?.temp.round()} C'),
          ],
        ),
      ),
    );
  }
}
