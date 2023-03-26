import 'package:flutter/material.dart';
import '../icon_constants.dart';

class icon_card extends StatelessWidget {
  final String image;
  final String title;
  final Color colour;
  const icon_card(
      {super.key,
      required this.image,
      required this.title,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: colour,
          radius: 30,
          child: Image.asset(image),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
