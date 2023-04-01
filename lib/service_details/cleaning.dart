import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/service_details/house_cleaning.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class cleaning extends StatefulWidget {
  const cleaning({super.key});

  @override
  State<cleaning> createState() => _cleaningState();
}

class _cleaningState extends State<cleaning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Cleaning",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => cleaning_detail())));
              },
              child: Sevices(
                Title_arg: "House Cleaning",
                Price: "\$24",
                image: maskgrp1,
                fullname: "Jenny Wilson",
              ),
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
