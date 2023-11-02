import 'package:lottie/lottie.dart';
import 'package:weather_app/helpers/animators/weather_type.dart';
import 'weather_picker.dart';

/// Class to search animations in assert file
class LottieAnimator {

  final defaultAssetLocation = 'assets/animations';
  final defaultAssetAnimation = 'missing';

  // fields
  final WeatherAnimationPicker _weatherPicker;

  LottieAnimator()
  : _weatherPicker = WeatherAnimationPicker();

  /// Return the animation from Lottie, otherwise it returns the default missing weather animation.
  LottieBuilder getAnimation(final String? condition) {
    try {
      final animationName = _weatherPicker.getTypeByCondition(condition);

      return Lottie.asset(_buildPathToAnimation(animationName));
    } catch (e) {
      // do stuff later
    }

    // Return image by default.
    return Lottie.asset(_buildPathToAnimation(WeatherType.missing));
  }

  String _buildPathToAnimation(final WeatherType animationType) {
    var animationName = animationType.toString();
    return '$defaultAssetLocation/weather_$animationName.json';
  }
}