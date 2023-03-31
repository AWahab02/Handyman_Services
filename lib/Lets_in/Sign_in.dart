import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/forget_reset/forgot_pass.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/form_inputs.dart';
import 'Sign_up.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "Login to your Account",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 36, bottom: 20),
                child: form_input(hinttext: "Email", image: Icons.email)),
            Container(
                padding: EdgeInsets.only(bottom: 20),
                child: form_input(hinttext: "Password", image: Icons.lock)),
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
            Container(
              child: Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 24, right: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: purple_color),
              height: 58,
              width: 380,
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => forgot_password())));
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                      color: purple_color, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25.25, left: 50, right: 16),
                    width: 85,
                    height: 1,
                    color: Color(0xff35383F),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.25),
                    child: Text(
                      "or continue with",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.25, right: 34, left: 16),
                    width: 85,
                    height: 1,
                    color: Color(0xff35383F),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 88,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff1F222A),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff35383F))),
                    child: Image.asset(facebook_logo),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 88,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff1F222A),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff35383F))),
                    child: Image.asset(google_logo),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 88,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff1F222A),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff35383F))),
                    child: Image.asset(apple_logo),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  SizedBox(width: 110),
                  Center(
                    child: Text(
                      "Don't have an account?",
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
                        "Sign Up",
                        style: TextStyle(color: purple_color),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
