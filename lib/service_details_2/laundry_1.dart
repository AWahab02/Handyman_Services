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

class laundry_booking extends StatefulWidget {
  const laundry_booking({super.key});

  @override
  State<laundry_booking> createState() => _laundry_bookingState();
}

class _laundry_bookingState extends State<laundry_booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Laundry Services",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.only(top: 24),
              child: Text(
                "Enter the weight and the service you need.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
            car_repairing_title(title: "Weight Total Clothing"),
            account_create_field(title: "Weight"),
            car_repairing_title(title: "Ironing Service"),
            account_create_field(title: "Yes/No"),
            car_repairing_title(title: "Fragrance Service"),
            account_create_field(title: "Yes/No"),
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

class car_repairing_title extends StatelessWidget {
  final String title;
  const car_repairing_title({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(top: 24),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
