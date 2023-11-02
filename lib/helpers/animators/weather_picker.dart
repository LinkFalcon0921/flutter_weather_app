import 'package:weather_app/helpers/animators/weather_type.dart';

class WeatherPicker {
  WeatherPicker();

  /// Return a WeatherType based on the given condition.
  WeatherType getTypeByCondition(final String condition) {

    for(final type in WeatherType.values) {
      // If not found appears as a type continue.
      if(type == WeatherType.notFound) continue;

      // Check if the type list contains the condition value.
      if(type.list.contains(condition)){
        return type;
      }
    }

    return WeatherType.notFound;
  }
}