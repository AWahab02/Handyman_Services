import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../profile/help_center.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({super.key});

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        actions: [
          Icon(
            Icons.call,
            color: searchfield_color,
          ),
          Image.asset(
            bell,
            color: searchfield_color,
          ),
        ],
        title: Text(
          "Lauralee Quinterro",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            message_tile(time: '10:00', text: 'Hi Jenny, good morning!'),
            message_tile1(text: "Hello there, good morning!", time: "10:05"),
            Container(
              margin: EdgeInsetsDirectional.only(top: 440),
              child: Row(
                children: [
                  Container(
                    width: 330,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: TextFormField(
                        style: styleset,
                        decoration: InputDecoration(
                          fillColor: textfield_color,
                          filled: true,
                          hintText: 'Message',
                          hintStyle: TextStyle(color: searchfield_color),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: purple_color,
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class message_tile1 extends StatelessWidget {
  final String text;
  final String time;
  const message_tile1({
    super.key,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 190, top: 30),
      decoration: BoxDecoration(
        color: textfield_color,
      ),
      width: 280,
      height: 70,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class message_tile extends StatelessWidget {
  final String text;
  final String time;
  const message_tile({
    super.key,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 120),
      decoration: BoxDecoration(
        color: purple_color,
      ),
      width: 280,
      height: 60,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
