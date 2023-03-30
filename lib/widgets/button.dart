import 'package:flutter/material.dart';

import '../color_constants.dart';
import 'intro.dart';

class button_main extends StatelessWidget {
  final String title;
  const button_main({
    super.key,
    required this.controller,
    required this.title,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          controller.page!.toInt() < 2
              ? controller.animateToPage(controller.page!.toInt() + 1,
                  duration: Duration(milliseconds: 300), curve: Curves.ease)
              : Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroScreen()),
                );
        },
        child: Text(title),
        style: ElevatedButton.styleFrom(
            backgroundColor: purple_color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
