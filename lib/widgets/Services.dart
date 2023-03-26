import 'package:flutter/material.dart';

import '../color_constants.dart';
import '../icon_constants.dart';

class Sevices extends StatelessWidget {
  final String Title_arg;
  final String Price;
  final String image;
  const Sevices({
    super.key,
    required this.Title_arg,
    required this.Price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: textfield_color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(image),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Full Name",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 100),
                    Icon(
                      Icons.bookmark,
                      color: purple_color,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  Title_arg,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  Price,
                  style: TextStyle(
                      color: purple_color,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                    Text(
                      "4.8 | 8,289 reviews",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
