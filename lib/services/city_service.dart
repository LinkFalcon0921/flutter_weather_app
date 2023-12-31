import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/geolocation_model.dart';

import '../helpers/permissions/geo_permission.dart';

class CityService {
  final GeoPermissionContext locationPermissionHelper;

  CityService() : locationPermissionHelper = GeoPermissionContext();

  Future<String> getCurrentCityByName() async {
    final resultCity =
        await locationPermissionHelper.requestPermission().then((value) async {
      if (value.isError || !value.getResult()) {
        // todo create modal to show data
        return null;
      }

      Position actualPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        // timeLimit: const Duration(seconds: 3),
      );

      final placeMarkLocation = await placemarkFromCoordinates(
          actualPosition.latitude, actualPosition.longitude);

      // Create an array or class to set location data for city and country.
      return placeMarkLocation[0].locality;
    });

    // Default value or set a response.
    return resultCity ?? '';
  }

  Future<Geolocation?> getCurrentCityByGeolocation() async {
    final resultGeolocation =
        await locationPermissionHelper.requestPermission().then((value) async {
      if (value.isError || !value.getResult()) {
        // todo create modal to show data
        return null;
      }

      Position actualPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        // timeLimit: const Duration(seconds: 3),
      );

      return Geolocation(actualPosition.latitude, actualPosition.longitude);
    }).catchError((_) => null);

    return resultGeolocation;
  }
}
