import 'package:flutter/material.dart';

Widget dayWeather() {
  return Flexible(
      // height: 80,
      child: GestureDetector(
    onTap: () {
      print("test");
    },
    child: ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.grey,
        );
      },
      scrollDirection: Axis.vertical,
      itemCount: 8,
      itemBuilder: (context, index) {
        return (Container(
            // color: Colors.red,

            width: double.infinity,
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Mon Dec 19",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "30 / 23 °C",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.sunny_snowing,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            )));
      },
    ),
  ));
}
