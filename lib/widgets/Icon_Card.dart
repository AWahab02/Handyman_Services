import 'package:flutter/material.dart';
import 'package:task/service_details/cleaning.dart';
import '../icon_constants.dart';

class icon_card extends StatelessWidget {
  final String image;
  final String title;
  final Color colour;
  final Widget nextscreen;
  const icon_card(
      {super.key,
      required this.image,
      required this.title,
      required this.colour,
      required this.nextscreen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => nextscreen)));
          },
          child: CircleAvatar(
            backgroundColor: colour,
            radius: 30,
            child: Image.asset(image),
          ),
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
