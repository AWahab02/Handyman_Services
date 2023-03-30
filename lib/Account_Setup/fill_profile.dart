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

class account_setup extends StatefulWidget {
  const account_setup({super.key});

  @override
  State<account_setup> createState() => _account_setupState();
}

class _account_setupState extends State<account_setup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Fill your Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: textfield_color,
                  radius: 70,
                ),
              ),
            ),
            account_create_field(title: "Full Name"),
            account_create_field(title: "Nickname"),
            account_create_field_icon(
              title: "Date of Birth",
              icondata: Icons.date_range,
            ),
            account_create_field_icon(
              title: "Email",
              icondata: Icons.mail,
            ),
            account_create_field_country(title: "Phone Number"),
            account_create_field_icon(
              title: "Address",
              icondata: Icons.location_on,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => create_pin())),
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
                    borderRadius: BorderRadius.circular(20),
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
