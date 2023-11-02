import 'package:geolocator/geolocator.dart';
import 'package:weather_app/helpers/actions_response.dart';

class GeoPermissionContext {

  /// Return if the system can access to the Geo Location.
  Future<Response<bool>> requestPermission() async {
    LocationPermission permissionStatus = await Geolocator.checkPermission();

    // If the access was denied forever send a message.
    // todo Check hot to check modals
    if (await _isLocationIs(LocationPermission.deniedForever)) {
      return ErrorResponse('The location permission are blocked.');
    }

    // Check if the access selected was denied.
    if (await _isLocationIs(LocationPermission.denied)) {
      permissionStatus = await Geolocator.requestPermission();
    }

    // Return the permission is if possible to get the result
    return ResultResponse(
        permissionStatus != LocationPermission.denied
            || permissionStatus != LocationPermission.deniedForever
            || permissionStatus != LocationPermission.unableToDetermine
    );
  }

  Future<bool> _isLocationIs(LocationPermission expectedStatus) async {
    LocationPermission permissionStatus = await Geolocator.checkPermission();

    return permissionStatus == expectedStatus;
  }

}