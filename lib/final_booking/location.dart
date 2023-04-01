import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task/Account_Setup/create_PIN.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import 'package:task/color_constants.dart';
import 'package:task/final_booking/payment.dart';
import 'package:task/icon_constants.dart';
import 'package:task/service_details_2/car_repairing_1.dart';
import 'package:task/widgets/account_create_country.dart';
import 'package:task/widgets/account_create_field.dart';
import 'package:task/widgets/account_create_field_icon.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class booking_3 extends StatefulWidget {
  const booking_3({super.key});

  @override
  State<booking_3> createState() => _booking_3State();
}

class _booking_3State extends State<booking_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Your Address/Location",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 12, right: 12),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext buildcontext) {
                        return Container(
                          height: 380,
                          color: bg_color,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 24, horizontal: 24),
                                  child: Text(
                                    "Location Details",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.grey[800],
                                  height: 1,
                                  width: 380,
                                ),
                                car_repairing_title(title: "Address"),
                                account_create_field_icon(
                                    title: "Address",
                                    icondata: Icons.location_on),
                                GestureDetector(
                                  onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => booking_4())),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 24),
                                    child: Center(
                                      child: Text(
                                        "Continue",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: purple_color),
                                    height: 58,
                                    width: 380,
                                  ),
                                ),

                                // Sevices(
                                //     Title_arg: "Location Details",
                                //     Price: ,
                                //     image: this.image,
                                //     fullname: this.fullname),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(map),
                    Image.asset(location),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => booking_4())),
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
