import 'package:weather_app/helpers/animators/weather_type.dart';

class WeatherAnimationPicker {
  WeatherAnimationPicker();

  /// Return a WeatherType based on the given condition.
  WeatherType getTypeByCondition(final String? condition) {
    // if the value is null, return the default value.
    if(condition == null) return WeatherType.missing;


    for(final type in WeatherType.values) {

      // Check if the actual type list contains the condition value.
      if(type.list.contains(condition)){
        return type;
      }
    }

    // If the value didn't match with any type, return the default value.
    return WeatherType.missing;
  }
}