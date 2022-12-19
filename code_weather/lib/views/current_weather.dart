import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String feelsLike) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          temp,
          style: const TextStyle(
            fontSize: 46.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          feelsLike,
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
