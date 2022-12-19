import 'package:code_weather/models/weather_model.dart';
import 'package:code_weather/services/weather_api.dart';
import 'package:code_weather/views/additional_information.dart';
import 'package:code_weather/views/header.dart';
import 'package:flutter/material.dart';

import '../views/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // DIO API
  WeatherApi client = WeatherApi();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("jakarta");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        // appBar: AppBar(
        //   backgroundColor: Colors.grey,
        //   elevation: 0.0,
        //   title: const Text("Location"),
        //   leading: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(Icons.search),
        //       color: Colors.white),
        // ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  header('${data!.cityName}'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  currentWeather(Icons.wb_sunny_rounded, "${data!.temp} °C",
                      "Feels like ${data!.feelsLike} °C"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "No precipation within an hour",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  additionalInformation(
                      "${data!.wind} m/s",
                      "${data!.humidity}%",
                      "${data!.pressure}hPa",
                      "${data!.visibility} m")
                ],
              );
            } else {
              return const Text("API Belum terpanggil");
            }
            return Container();
          },
        ));
  }
}
