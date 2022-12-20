import 'package:code_weather/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherApi {
  Future<CurrentWeather?> getCurrentWeather(String long, String lat) async {
    try {
      // print(location);
      var endpoint =
          ("https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=7826f23aa9bdcd3651458bab5f47fd65&units=metric");
      // print(endpoint);
      var dio = Dio();
      var response = await dio.get(endpoint);
      // print(response);
      var body = (response.data);
      // print(body);

      // print(Weather.fromJson(body).cityName);

      return CurrentWeather.fromJson(body);
    } catch (err) {
      print(err);
    }
  }
}
