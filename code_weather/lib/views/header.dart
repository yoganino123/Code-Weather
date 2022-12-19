import 'package:flutter/material.dart';

Widget header(String cityName) {
  return Container(
    width: double.infinity,

    padding: const EdgeInsets.all(18.0),
    // color: Colors.red,
    decoration: const BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.grey,
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.white),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityName,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            Icon(
              Icons.place,
              color: Colors.white,
            ),
          ],
        )
      ],
    ),
  );
}
