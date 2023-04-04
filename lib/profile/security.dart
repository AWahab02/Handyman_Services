import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/Account_Setup/create_PIN.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import 'package:task/color_constants.dart';
import 'package:task/icon_constants.dart';
import 'package:task/widgets/account_create_country.dart';
import 'package:task/widgets/account_create_field.dart';
import 'package:task/widgets/account_create_field_icon.dart';

class security_profile extends StatefulWidget {
  const security_profile({super.key});

  @override
  State<security_profile> createState() => _security_profileState();
}

class _security_profileState extends State<security_profile> {
  bool state = false;
  bool state1 = false;
  bool state2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg_color,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bg_color,
          title: Text(
            "Security",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(12),
          children: [
            ListTile(
              trailing: CupertinoSwitch(
                  value: state,
                  onChanged: (value) {
                    state = value;
                    setState(
                      () {},
                    );
                  }),
              leading: Text(
                'Remember me',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            ListTile(
              trailing: CupertinoSwitch(
                  value: state1,
                  onChanged: (value) {
                    state1 = value;
                    setState(
                      () {},
                    );
                  }),
              leading: Text(
                'Face ID',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            ListTile(
              trailing: CupertinoSwitch(
                  value: state2,
                  onChanged: (value) {
                    state2 = value;
                    setState(
                      () {},
                    );
                  }),
              leading: Text(
                'Biometric ID',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            ListTile(
              trailing: Icon(
                Icons.arrow_right,
                color: purple_color,
              ),
              leading: Text(
                'Google Authenticator',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Center(
                child: Text(
                  "Change PIN",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: textfield_color),
              height: 58,
              width: 380,
            ),
            Container(
              child: Center(
                child: Text(
                  "Change Password",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: textfield_color),
              height: 58,
              width: 380,
            ),
          ],
        ));
  }
}
