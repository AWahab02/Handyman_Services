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

import '../final_booking/booking_page1.dart';

class appliance_booking extends StatefulWidget {
  const appliance_booking({super.key});

  @override
  State<appliance_booking> createState() => _appliance_bookingState();
}

class _appliance_bookingState extends State<appliance_booking> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Appliance Services",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Choose the appliance services you need",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              appliance_booking_tile(title: "Living Room"),
              appliance_booking_tile(title: "Terrace"),
              appliance_booking_tile(title: "Bedroom"),
              appliance_booking_tile(title: "Bathroom"),
              appliance_booking_tile(title: "Kitchen"),
              appliance_booking_tile(title: "Dining Room"),
              appliance_booking_tile(title: "Garage"),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => booking_1())),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
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
      ),
    );
  }
}

class appliance_booking_tile extends StatefulWidget {
  final String title;

  const appliance_booking_tile({
    super.key,
    required this.title,
  });

  @override
  State<appliance_booking_tile> createState() => _appliance_booking_tileState();
}

class _appliance_booking_tileState extends State<appliance_booking_tile> {
  bool showvalue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: textfield_color, borderRadius: BorderRadius.circular(20)),
      height: 72,
      width: 360,
      child: Row(
        children: [
          Container(
            width: 195,
            padding: EdgeInsets.only(left: 24),
            child: Text(
              widget.title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(width: 100),
          Checkbox(
              side: BorderSide(color: purple_color),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              value: this.showvalue,
              activeColor: purple_color,
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  this.showvalue = value!;
                });
              })
        ],
      ),
    );
  }
}
