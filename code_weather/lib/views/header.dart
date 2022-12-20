import 'package:flutter/material.dart';

Widget header(String cityName) {
  return Container(
    width: double.infinity,

    padding: const EdgeInsets.all(18.0),
    // color: Colors.red,
    decoration: const BoxDecoration(
      shape: BoxShape.rectangle,
      color: Color.fromARGB(255, 20, 20, 20),
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
            const Icon(
              Icons.place,
              color: Colors.white,
            ),
          ],
        )
      ],
    ),
  );
}
