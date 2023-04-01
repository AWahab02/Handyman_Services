import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task/Account_Setup/create_PIN.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import 'package:task/color_constants.dart';
import 'package:task/final_booking/promo_page.dart';
import 'package:task/icon_constants.dart';
import 'package:task/service_details_2/car_repairing_1.dart';
import 'package:task/widgets/account_create_country.dart';
import 'package:task/widgets/account_create_field.dart';
import 'package:task/widgets/account_create_field_icon.dart';

import '../widgets/action_chip.dart';

class booking_1 extends StatefulWidget {
  const booking_1({super.key});

  @override
  State<booking_1> createState() => _booking_1State();
}

class _booking_1State extends State<booking_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Booking Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 24, bottom: 24),
                child: Text(
                  "Enter Date",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SfCalendar(
                monthCellBuilder: (context, details) {
                  return Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      details.date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
                viewHeaderStyle: ViewHeaderStyle(
                    dayTextStyle: TextStyle(color: Colors.white)),
                headerStyle: CalendarHeaderStyle(
                    textStyle: TextStyle(color: Colors.white)),
                todayHighlightColor: searchfield_color,
                todayTextStyle: TextStyle(color: Colors.black),
                appointmentTextStyle: TextStyle(color: Colors.white),
                selectionDecoration: BoxDecoration(
                  color: Color.fromRGBO(114, 16, 255, 0.5),
                  shape: BoxShape.circle,
                ),
                view: CalendarView.month,
                backgroundColor: textfield_color,
              ),
              cleaning_booking_tile(title: "Living Room"),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 24, bottom: 24),
                child: Text(
                  "Choose Start Time",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  action_chip(title_name: "09:00 AM"),
                  action_chip(title_name: "10:00 AM"),
                  action_chip(title_name: "11:00 AM"),
                  action_chip(title_name: "12:00 AM"),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 24, bottom: 24),
                child: Text(
                  "Promo Code",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    width: 290,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: textfield_color,
                          hintText: "From",
                          hintStyle: TextStyle(color: searchfield_color),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none)),
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
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => booking_2())),
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
