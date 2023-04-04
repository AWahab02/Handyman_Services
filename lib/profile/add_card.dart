import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/service_details_2/car_repairing_1.dart';
import 'package:task/widgets/account_create_field.dart';

import '../color_constants.dart';
import '../icon_constants.dart';

class add_card extends StatefulWidget {
  const add_card({super.key});

  @override
  State<add_card> createState() => _add_cardState();
}

class _add_cardState extends State<add_card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        actions: [
          Icon(
            Icons.message,
            color: searchfield_color,
          ),
        ],
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(card_credit),
            ),
            car_repairing_title(title: "Card Name"),
            account_create_field(title: "Name"),
            car_repairing_title(title: "Card Number"),
            account_create_field(title: "Number"),
            Row(
              children: [
                car_repairing_title(title: "Expiry Date"),
                car_repairing_title(title: "CVV"),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 24, top: 12),
                  width: 150,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    decoration: InputDecoration(
                      fillColor: textfield_color,
                      filled: true,
                      hintText: "Expiry Date",
                      hintStyle: TextStyle(color: searchfield_color),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 24, top: 12),
                  width: 170,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    decoration: InputDecoration(
                      fillColor: textfield_color,
                      filled: true,
                      hintText: "CVV",
                      hintStyle: TextStyle(color: searchfield_color),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => add_card())),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 42),
                child: Center(
                  child: Text(
                    "Add New Card",
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
    );
  }
}
