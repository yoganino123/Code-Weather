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
  CurrentWeather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("jakarta");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
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
                  header('${data!.name}'),
                  currentWeather(
                      Icons.wb_sunny_rounded,
                      "${data!.main!.temp!.round()}°C",
                      "Feels like ${data!.main!.feelsLike!.round()}°C",
                      "${data!.weather![0].main}",
                      "${data!.weather![0].description}"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  additionalInformation(
                      "${data!.wind!.speed} m/s",
                      "${data!.main!.humidity}%",
                      "${data!.main!.pressure} hPa",
                      "${data!.visibility} m")
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        ));
  }
}
