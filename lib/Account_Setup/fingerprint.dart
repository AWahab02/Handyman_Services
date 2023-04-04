import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task/icon_constants.dart';
import 'package:task/main.dart';
import '../color_constants.dart';
import 'create_PIN.dart';

class fingerprint extends StatefulWidget {
  const fingerprint({super.key});

  @override
  State<fingerprint> createState() => _fingerprintState();
}

class _fingerprintState extends State<fingerprint>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      new AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Set your fingerprint",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Add a fingerprint to make your account more secure.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 104),
            child: Image.asset(fingerprint_icon),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 80),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Please put your finger on the fingerprint scanner to get started.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => create_pin())),
                child: Container(
                  child: Center(
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 40, left: 24, right: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: textfield_color),
                  height: 58,
                  width: 150,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return Dialog(
                          insetPadding: EdgeInsets.symmetric(
                              vertical: 140, horizontal: 40),
                          backgroundColor: textfield_color,
                          child: Column(
                            children: [
                              SizedBox(height: 40),
                              Image.asset(fingerprint_alert),
                              SizedBox(height: 32),
                              Center(
                                child: Container(
                                  child: Text(
                                    "Congratulations!",
                                    style: TextStyle(
                                        color: purple_color,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                child: Text(
                                  "Your account is ready to use. You will be redirected to the Home page in a few seconds..",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 32),
                              Image.asset(splash_icon1),
                            ],
                          ),
                        );
                      }));
                  Timer(Duration(seconds: 3), () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => MyApp()));
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 40, right: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: purple_color),
                  height: 58,
                  width: 150,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
