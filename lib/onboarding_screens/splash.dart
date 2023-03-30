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

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => Carousel()));
    });
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
            Container(
              child: Image.asset(splash_icon1),
            )
          ],
        ),
      ),
    );
  }
}
