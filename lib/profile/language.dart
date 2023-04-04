import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/service_details_2/car_repairing_1.dart';

import '../color_constants.dart';

class languages_profile extends StatefulWidget {
  const languages_profile({super.key});

  @override
  State<languages_profile> createState() => _languages_profileState();
}

class _languages_profileState extends State<languages_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Language",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            car_repairing_title(title: "Suggested"),
            language_tile(title: "English (US)"),
            language_tile(title: "English (UK)"),
            car_repairing_title(title: "Languages"),
            Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                color: searchfield_color,
                width: 350,
                height: 1),
            language_tile(title: "Mandarin"),
            language_tile(title: "Hindi"),
            language_tile(title: "Spanish"),
            language_tile(title: "French"),
            language_tile(title: "Arabic"),
            language_tile(title: "Bengali"),
            language_tile(title: "Russian"),
            language_tile(title: "Indonesia"),
          ],
        ),
      ),
    );
  }
}

class language_tile extends StatefulWidget {
  final String title;

  const language_tile({
    super.key,
    required this.title,
  });

  @override
  State<language_tile> createState() => _language_tileState();
}

class _language_tileState extends State<language_tile> {
  bool showvalue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
