import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class popular_services extends StatefulWidget {
  const popular_services({super.key});

  @override
  State<popular_services> createState() => _popular_servicesState();
}

class _popular_servicesState extends State<popular_services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Most Popular Services",
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
              image: popular1,
              fullname: "Jenny Wilson",
            ),
            Sevices(
              Title_arg: "Floor Cleaning",
              Price: "\$26",
              image: popular2,
              fullname: "Rayford Chail",
            ),
            Sevices(
              Title_arg: "Washing Clothes",
              Price: "\$19",
              image: popular3,
              fullname: "Jenetta Rolo",
            ),
            Sevices(
              Title_arg: "Bathroom Cleaning",
              Price: "\$23",
              image: popular4,
              fullname: "Freda Varnes",
            ),
          ],
        ),
      ),
    );
  }
}
