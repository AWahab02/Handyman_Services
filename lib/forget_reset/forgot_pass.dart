import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/forget_reset/forgot_pass_2.dart';
import 'package:task/icon_constants.dart';

import '../color_constants.dart';

class forgot_password extends StatefulWidget {
  const forgot_password({super.key});

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Forgot Password",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 42.83),
                  child: Image.asset(password_icon)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.only(top: 36),
              child: Text(
                "Select which contact details should we use to reset your password",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            forgot_pass_tile(
              title1: "via SMS",
              subtitle: "+1 111 ****99",
              image: Icons.sms,
            ),
            forgot_pass_tile(
              title1: "via Email",
              subtitle: "and***@yourdomain.com",
              image: Icons.sms,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => forgot_pass2())),
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
