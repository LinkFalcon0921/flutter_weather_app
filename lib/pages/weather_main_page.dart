import 'package:flutter/material.dart';
import 'package:weather_app/components/refresher_button.dart';
import 'package:weather_app/helpers/animators/lottie_animator.dart';
import 'package:weather_app/models/geolocation_model.dart';
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

  @deprecated
  _fetchWeatherByCityName() async {
    String currentCity = await _cityService.getCurrentCityByName();

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

  _fetchWeatherByGeolocation() async {
    Geolocation? userLocation =
        await _cityService.getCurrentCityByGeolocation();

    try {
      final weatherFound =
          await _weatherService.getWeatherByGeolocation(userLocation);

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

    // _fetchWeatherByCityName();
    _fetchWeatherByGeolocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // City name
            Text(
              _weather?.cityName ?? "Loading city",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            // Animation
            Container(
                margin: const EdgeInsets.symmetric(vertical: 3.0),
                height: 250.0,
                child: _animator
                    .getAnimation(_weather?.weatherInfo.mainCondition)),

            // Details list
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Temperature : unicode for celsius.
                Text(
                  '${_weather?.temp.round() ?? '??'} \u2103',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                // Condition Description
                Text(
                  _weather?.weatherInfo.mainDescription ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: RefresherButton(_handleRefreshButtonByGeolocation),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // Handle when you want to refresh weather.
  @deprecated
  void _handleRefreshButtonByCityName() async {
    await _fetchWeatherByCityName();
  }

  // Handle when you want to refresh weather.
  void _handleRefreshButtonByGeolocation() async {
    await _fetchWeatherByGeolocation();
  }
}
