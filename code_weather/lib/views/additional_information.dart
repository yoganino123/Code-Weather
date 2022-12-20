import 'package:flutter/material.dart';

TextStyle titleFont = const TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 12.0,
  color: Colors.white,
);

TextStyle dataFont = const TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 10.0,
  color: Colors.white,
);

Widget additionalInformation(
  String wind,
  String humidity,
  String pressure,
  String visibility,
) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.all(18.0),
    padding: const EdgeInsets.all(18.0),
    // color: Colors.red,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      shape: BoxShape.rectangle,
      color: Colors.white10,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind: $wind",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Pressure: $pressure",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity: $humidity",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Visibility: $visibility",
                  style: titleFont,
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
