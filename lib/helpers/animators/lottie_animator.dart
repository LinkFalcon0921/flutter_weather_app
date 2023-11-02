import 'package:lottie/lottie.dart';

/// Class to search animations in assert file
class LottieAnimator {

  LottieAnimator();

  LottieBuilder getAnimation(final String animationName) {
    return Lottie.asset('assets/animations/weather_$animationName.json');
  }
}