import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/forget_reset/forgot_pass_2.dart';
import 'package:task/icon_constants.dart';
import 'package:task/widgets/account_create_field_icon.dart';

import '../color_constants.dart';
import '../main.dart';

class create_password extends StatefulWidget {
  const create_password({super.key});

  @override
  State<create_password> createState() => _create_passwordState();
}

class _create_passwordState extends State<create_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Create New Password",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 42.83),
                  child: Image.asset(create_pass_icon)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text(
                "Create Your New Password",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            account_create_field_icon(
                title: "Password", icondata: Icons.remove_red_eye),
            account_create_field_icon(
                title: "Password", icondata: Icons.remove_red_eye),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: purple_color, width: 2.5)),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return Dialog(
                        insetPadding:
                            EdgeInsets.symmetric(vertical: 140, horizontal: 40),
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
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                margin: EdgeInsets.only(top: 18, left: 24, right: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: purple_color),
                height: 58,
                width: 380,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class forgot_pass_tile extends StatelessWidget {
  final String title1;
  final String subtitle;
  final IconData image;
  const forgot_pass_tile({
    super.key,
    required this.title1,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      height: 128,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: textfield_color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: icon1_bg,
            ),
            child: Icon(
              image,
              color: purple_color,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              Text(subtitle,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700)),
            ],
          )
        ],
      ),
    );
  }
}
