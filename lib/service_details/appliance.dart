import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/service_details/appliance_detail.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class appliance extends StatefulWidget {
  const appliance({super.key});

  @override
  State<appliance> createState() => _applianceState();
}

class _applianceState extends State<appliance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Appliance",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => appliance_detail())));
              },
              child: Sevices(
                Title_arg: "Appliance Services",
                Price: "\$24",
                image: maskgrp1,
                fullname: "Cameron Will",
              ),
            ),
            Sevices(
              Title_arg: "Household Appliance",
              Price: "\$26",
              image: maskgrp2,
              fullname: "Rayford Chail",
            ),
            Sevices(
              Title_arg: "Appliance Services",
              Price: "\$19",
              image: maskgrp3,
              fullname: "Jenetta Rolo",
            ),
            Sevices(
              Title_arg: "Kitchen Appliance",
              Price: "\$23",
              image: maskgrp4,
              fullname: "Freda Varnes",
            ),
            Sevices(
              Title_arg: "Appliance Services",
              Price: "\$19",
              image: maskgrp3,
              fullname: "Jenetta Rolo",
            ),
          ],
        ),
      ),
    );
  }
}
