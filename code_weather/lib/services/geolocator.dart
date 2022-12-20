import 'package:geolocator/geolocator.dart';

getLatitude() async {
  await Geolocator.checkPermission();
  await Geolocator.requestPermission();

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  // print(position.latitude.toString());
  return position.latitude.toString();
}

getLongitude() async {
  await Geolocator.checkPermission();
  await Geolocator.requestPermission();

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  // print(position.longitude.toString());

  return position.longitude.toString();
}
