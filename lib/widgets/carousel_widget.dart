import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/main.dart';
import 'package:task/widgets/intro.dart';
import '../color_constants.dart';
import 'button.dart';

class carousel_widget extends StatelessWidget {
  final String title;
  final String image;
  const carousel_widget({
    super.key,
    required this.controller,
    required this.title,
    required this.image,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 48),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 42, fontWeight: FontWeight.w700, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        SmoothPageIndicator(controller: controller, count: 3),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: button_main(controller: controller, title: 'Next'),
        )
      ]),
    );
  }
}
