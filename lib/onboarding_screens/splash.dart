import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task/main.dart';
import 'package:task/onboarding_screens/carousels.dart';
import '../icon_constants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      new AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat();
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => Carousel()));
    });
  }

  @override
  dispose() {
    _controller.dispose(); // you need this
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(splash_icon),
                ),
              ],
            ),
            SizedBox(height: 150),
            AnimatedBuilder(
              animation: _controller,
              builder: (_, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * 3.14,
                  child: child,
                );
              },
              child: Container(
                child: Image.asset(splash_icon1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
