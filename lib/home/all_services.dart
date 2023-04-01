import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/color_constants.dart';
import 'package:task/service_details/appliance.dart';
import 'package:task/service_details/laundry.dart';
import 'package:task/service_details/painting.dart';
import 'package:task/service_details/plumbing.dart';
import 'package:task/service_details/repairing.dart';
import 'package:task/service_details/shifting.dart';

import '../icon_constants.dart';
import '../service_details/cleaning.dart';
import '../widgets/Icon_Card.dart';

class all_services extends StatefulWidget {
  const all_services({super.key});

  @override
  State<all_services> createState() => _all_servicesState();
}

class _all_servicesState extends State<all_services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "All Services",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon_card(
                    title: "Cleaning",
                    image: icon1,
                    colour: icon1_bg,
                    nextscreen: cleaning()),
                icon_card(
                    title: "Repairing",
                    image: icon2,
                    colour: icon2_bg,
                    nextscreen: repairing()),
                icon_card(
                    title: "Painting",
                    image: icon3,
                    colour: icon3_bg,
                    nextscreen: painting()),
                icon_card(
                    title: "Laundry",
                    image: icon4,
                    colour: icon4_bg,
                    nextscreen: laundry()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon_card(
                    title: "Appliance",
                    image: icon5,
                    colour: icon5_bg,
                    nextscreen: appliance()),
                icon_card(
                    title: "Plumbing",
                    image: icon6,
                    colour: icon6_bg,
                    nextscreen: plumbing()),
                icon_card(
                    title: "Shifting",
                    image: icon7,
                    colour: icon7_bg,
                    nextscreen: shifting()),
                icon_card(
                    title: "More",
                    image: icon8,
                    colour: icon8_bg,
                    nextscreen: shifting()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                icon_card(
                    title: "Cleaning",
                    image: icon1,
                    colour: icon1_bg,
                    nextscreen: cleaning()),
                icon_card(
                    title: "Repairing",
                    image: icon2,
                    colour: icon2_bg,
                    nextscreen: repairing()),
                icon_card(
                    title: "Painting",
                    image: icon3,
                    colour: icon3_bg,
                    nextscreen: painting()),
                icon_card(
                    title: "Laundry",
                    image: icon4,
                    colour: icon4_bg,
                    nextscreen: laundry()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                icon_card(
                    title: "Cleaning",
                    image: icon1,
                    colour: icon1_bg,
                    nextscreen: cleaning()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
