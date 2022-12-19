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
    padding: const EdgeInsets.all(18.0),
    // color: Colors.red,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      shape: BoxShape.rectangle,
      color: Colors.blueGrey,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind:",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Pressure:",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: dataFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  pressure,
                  style: dataFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity:",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Visibility:",
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  humidity,
                  style: dataFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  visibility,
                  style: dataFont,
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
