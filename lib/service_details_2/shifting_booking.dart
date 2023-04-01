import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/Account_Setup/create_PIN.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import 'package:task/color_constants.dart';
import 'package:task/icon_constants.dart';
import 'package:task/service_details_2/shifting_booking2.dart';
import 'package:task/widgets/account_create_country.dart';
import 'package:task/widgets/account_create_field.dart';
import 'package:task/widgets/account_create_field_icon.dart';

class shifting_booking extends StatefulWidget {
  const shifting_booking({super.key});

  @override
  State<shifting_booking> createState() => _shifting_bookingState();
}

class _shifting_bookingState extends State<shifting_booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "House Shifting",
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
                  "Enter the number of items you want to shift.",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              cleaning_booking_tile(title: "Table"),
              cleaning_booking_tile(title: "Chair"),
              cleaning_booking_tile(title: "Television"),
              cleaning_booking_tile(title: "Carpet"),
              cleaning_booking_tile(title: "Washing Machine"),
              cleaning_booking_tile(title: "Sofa"),
              cleaning_booking_tile(title: "Cupboard"),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => shifting_booking2())),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Center(
                    child: Text(
                      "Continue - \$250",
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

class cleaning_booking_tile extends StatelessWidget {
  final String title;
  const cleaning_booking_tile({
    super.key,
    required this.title,
  });

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
              title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.minimize,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
                shape: CircleBorder(),
              ),
            ),
          ),
          Container(
            width: 20,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "0",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
                shape: CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
