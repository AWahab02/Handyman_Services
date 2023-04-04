import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/icon_constants.dart';
import 'package:task/service_details_2/car_repairing_1.dart';

import '../color_constants.dart';

class invite_friends extends StatefulWidget {
  const invite_friends({super.key});

  @override
  State<invite_friends> createState() => _invite_friendsState();
}

class _invite_friendsState extends State<invite_friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Invite Friends",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            chat_tile(
              image: call_icon,
              fullname: "Tynisha Obey",
              message: "+1-300-555-0135",
            ),
            chat_tile(
              image: call_icon1,
              fullname: "Florencio Dorrance",
              message: "+1-202-555-0136",
            ),
            chat_tile(
              image: call_icon2,
              fullname: "Chantal Shelburne",
              message: "+1-300-555-0135",
            ),
            chat_tile(
              image: call_icon3,
              fullname: "Florencio Dorrance",
              message: "+1-300-555-0135",
            ),
            chat_tile(
              image: call_icon4,
              fullname: "Tynisha Obey",
              message: "+1-300-555-0135",
            ),
            chat_tile(
              image: call_icon5,
              fullname: "Chantal Shelburne",
              message: "+1-300-555-0135",
            ),
            chat_tile(
              image: call_icon6,
              fullname: "Florencio Dorrance",
              message: "+1-300-555-0135",
            ),
            chat_tile(
              image: call_icon1,
              fullname: "Benny Spanbauer",
              message: "+1-300-555-0135",
            ),
            chat_tile(
              image: call_icon3,
              fullname: "Jamel Eusebio",
              message: "+1-300-555-0135",
            ),
          ],
        ),
      ),
    );
  }
}

class chat_tile extends StatelessWidget {
  final String image;
  final String fullname;
  final String message;
  const chat_tile({
    super.key,
    required this.image,
    required this.fullname,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset(image),
          radius: 30,
        ),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: purple_color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {},
          child: Text("Invite"),
        ),
        title: Text(
          fullname,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Row(
          children: [
            Text(
              message,
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
