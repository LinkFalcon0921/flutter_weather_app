import 'package:lottie/lottie.dart';

/// Class to search animations in assert file
class LottieAnimator {

  LottieAnimator();

  LottieBuilder getAnimation(final String animationName) {
    try {
      return Lottie.asset('assets/animations/weather_$animationName.json');
    } catch (e) {
      // do stuff later
    }

    // Return image by default.
    return Lottie.asset('assets/animations/weather_not_found.json');
  }
}