import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/color_constants.dart';
import 'package:task/icon_constants.dart';

import '../widgets/carousel_widget.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        controller: controller,
        children: <Widget>[
          carousel_widget(
            controller: controller,
            image: carousel_1,
            title: "We provide professional service at a friendly price",
          ),
          carousel_widget(
            controller: controller,
            image: carousel_2,
            title: "The best results and your satisfaction is our top priority",
          ),
          carousel_widget(
            controller: controller,
            image: carousel_3,
            title: "Let's make awesome changes to your home",
          ),
        ],
      ),
    );
  }
}
