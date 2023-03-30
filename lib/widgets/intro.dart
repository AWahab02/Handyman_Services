import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/color_constants.dart';
import 'package:task/icon_constants.dart';

import '../Lets_in/Sign_up.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      body: Column(
        children: [
          Container(
            child: Image.asset(intro_frame),
            margin: EdgeInsets.only(top: 80.25),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 25.25, bottom: 30.25),
              child: Text(
                "Lets you in",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          ContinueWith(title: "Continue with Facebook", image: facebook_logo),
          SizedBox(height: 16),
          ContinueWith(title: "Continue with Google", image: google_logo),
          SizedBox(height: 16),
          ContinueWith(title: "Continue with Apple", image: apple_logo),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25.25, left: 34, right: 16),
                width: 135,
                height: 1,
                color: Color(0xff35383F),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.25),
                child: Text(
                  "or",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.25, right: 34, left: 16),
                width: 135,
                height: 1,
                color: Color(0xff35383F),
              ),
            ],
          ),
          Container(
            child: Center(
              child: Text(
                "Sign in with password",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
            margin: EdgeInsets.only(top: 18, left: 24, right: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: purple_color),
            height: 58,
            width: 380,
          ),
          Row(
            children: [
              SizedBox(
                width: 110,
              ),
              Center(
                child: Text(
                  "Dont have an account?",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Signup_main()));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: purple_color),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class Signup {}

class ContinueWith extends StatelessWidget {
  final String title;
  final String image;
  const ContinueWith({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xff1F222A), borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(image),
            ),
            SizedBox(width: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            )
          ],
        )),
      ),
    );
  }
}
