import 'package:flutter/material.dart';

Widget hourWeather() {
  return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Container();
        },
        scrollDirection: Axis.horizontal,
        itemCount: 24,
        itemBuilder: (context, index) {
          return (SizedBox(
              width: 60,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "22.00",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "27 °C",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              )));
        },
      ));
}
