class Weather {
  String? cityName;
  String? temp;
  String? wind;
  String? humidity;
  String? feelsLike;
  String? pressure;
  String? visibility;

  Weather(
    data, {
    this.cityName,
    this.wind,
    this.humidity,
    this.feelsLike,
    this.pressure,
    this.visibility,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"].toString();
    wind = json["wind"]["speed"].toString();
    pressure = json["main"]["pressure"].toString();
    humidity = json["main"]["humidity"].toString();
    feelsLike = json["main"]["feels_like"].toString();
    visibility = json["visibility"].toString();
  }
}
