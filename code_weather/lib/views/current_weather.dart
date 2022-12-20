import 'package:flutter/material.dart';

Widget currentWeather(
  IconData icon,
  String temp,
  String feelsLike,
  String weatherMain,
  String weatherDescription,
) {
  return Center(
    child: Container(
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(5.0),
      height: 150.0,
      width: 200.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.amber,
              size: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  weatherMain,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  weatherDescription,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10.0,
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          temp,
          style: const TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
        Text(
          feelsLike,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ]),
    ),
  );
}
