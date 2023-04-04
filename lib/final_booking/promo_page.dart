import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task/Account_Setup/create_PIN.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import 'package:task/color_constants.dart';
import 'package:task/final_booking/location.dart';
import 'package:task/icon_constants.dart';
import 'package:task/service_details_2/car_repairing_1.dart';
import 'package:task/widgets/account_create_country.dart';
import 'package:task/widgets/account_create_field.dart';
import 'package:task/widgets/account_create_field_icon.dart';

import '../widgets/action_chip.dart';

class booking_2 extends StatefulWidget {
  const booking_2({super.key});

  @override
  State<booking_2> createState() => _booking_2State();
}

class _booking_2State extends State<booking_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Add Promo",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 12, right: 12),
          child: Column(
            children: [
              promo_tile(
                  title1: "Special 25% Off",
                  subtitle: "Special promo only today!",
                  image: notif0),
              promo_tile(
                  title1: "Discount 30% Off",
                  subtitle: "New user special promo",
                  image: notif2),
              promo_tile(
                  title1: "Special 20% Off",
                  subtitle: "Special promo only today!",
                  image: notif1),
              promo_tile(
                  title1: "Discount 40% Off",
                  subtitle: "Special promo only today",
                  image: notif4),
              promo_tile(
                  title1: "Discount 40% Off",
                  subtitle: "Special promo only today",
                  image: notif2),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => booking_3())),
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
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 195,
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
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
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
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
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Cost increase after 2 hrs of work",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class promo_tile extends StatefulWidget {
  final String title1;
  final String subtitle;
  final String image;
  const promo_tile({
    super.key,
    required this.title1,
    required this.subtitle,
    required this.image,
  });

  @override
  State<promo_tile> createState() => _promo_tileState();
}

class _promo_tileState extends State<promo_tile> {
  bool showvalue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 24),
      height: 128,
      width: 400,
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
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: icon1_bg,
              ),
              child: Image.asset(widget.image)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(widget.title1,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 8),
              Container(
                width: 200,
                child: Text(widget.subtitle,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700)),
              ),
            ],
          ),
          Container(
            child: Checkbox(
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
                }),
          )
        ],
      ),
    );
  }
}
