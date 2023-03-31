import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class bookmarked extends StatefulWidget {
  const bookmarked({super.key});

  @override
  State<bookmarked> createState() => _bookmarkedState();
}

class _bookmarkedState extends State<bookmarked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "My Bookmarks",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                action_chip(title_name: "All"),
                action_chip(title_name: "Cleaning"),
                action_chip(title_name: "Repairing"),
                action_chip(title_name: "Painting"),
              ],
            ),
            Sevices(
              Title_arg: "House Cleaning",
              Price: "\$24",
              image: maskgrp1,
              fullname: "Jenny Wilson",
            ),
            Sevices(
              Title_arg: "AC Repairing",
              Price: "\$26",
              image: maskgrp2,
              fullname: "Rayford Chail",
            ),
            Sevices(
              Title_arg: "Laundry Services",
              Price: "\$19",
              image: maskgrp3,
              fullname: "Jenetta Rolo",
            ),
            Sevices(
              Title_arg: "Motorcycle Repairing",
              Price: "\$23",
              image: maskgrp4,
              fullname: "Freda Varnes",
            ),
          ],
        ),
      ),
    );
  }
}
