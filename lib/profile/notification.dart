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

class notification_profile extends StatefulWidget {
  const notification_profile({super.key});

  @override
  State<notification_profile> createState() => _notification_profileState();
}

class _notification_profileState extends State<notification_profile> {
  bool state = false;
  bool state1 = false;
  bool state2 = false;
  bool state3 = false;
  bool state4 = false;
  bool state5 = false;
  bool state6 = false;
  bool state7 = false;
  bool state8 = false;
  bool state9 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg_color,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bg_color,
          title: Text(
            "Notification",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView(
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
                'General Notification',
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
                'Sound',
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
                'Vibrate',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            ListTile(
              trailing: CupertinoSwitch(
                  value: state3,
                  onChanged: (value) {
                    state3 = value;
                    setState(
                      () {},
                    );
                  }),
              leading: Text(
                'Special Offers',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            ListTile(
              trailing: CupertinoSwitch(
                  value: state4,
                  onChanged: (value) {
                    state4 = value;
                    setState(
                      () {},
                    );
                  }),
              leading: Text(
                'Promo & Discount',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            ListTile(
              trailing: CupertinoSwitch(
                  value: state5,
                  onChanged: (value) {
                    state5 = value;
                    setState(
                      () {},
                    );
                  }),
              leading: Text(
                'Payments',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            ListTile(
              trailing: CupertinoSwitch(
                  value: state6,
                  onChanged: (value) {
                    state6 = value;
                    setState(
                      () {},
                    );
                  }),
              leading: Text(
                'Cashback',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            ListTile(
              trailing: CupertinoSwitch(
                  value: state7,
                  onChanged: (value) {
                    state7 = value;
                    setState(
                      () {},
                    );
                  }),
              leading: Text(
                'App Updates',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
          ],
        ));
  }
}
