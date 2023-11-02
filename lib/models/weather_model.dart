// weather model class
class Weather {
  final String cityName;
  final double temp;
  final WeatherInfo weatherInfo;

  // Constructor
  Weather({
    required this.cityName,
    required this.temp,
    required this.weatherInfo,
  });

  // Create a Weather Object based the json from API
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temp: json['main']['temp'].toDouble(),
      weatherInfo: WeatherInfo.fromJson(json),
    );
  }
}

// This class handle the data text: Weather name and description
class WeatherInfo {
  final String mainCondition;
  final String mainDescription;

  WeatherInfo({required this.mainCondition, required this.mainDescription});

  // Create a WeatherInfo Object based the json from API
  factory WeatherInfo.fromJson(Map<String, dynamic> json) {
    // get the main condition but cast to lowercase
    final mainConditionTxt = json['weather'][0]['main']/*.toLowerCase()*/;
    final mainDescriptionTxt = json['weather'][0]['description'];

    return WeatherInfo(
      mainCondition: mainConditionTxt,
        mainDescription: mainDescriptionTxt,
    );
  }
}
