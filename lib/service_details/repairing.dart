import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/service_details/car_repair.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class repairing extends StatefulWidget {
  const repairing({super.key});

  @override
  State<repairing> createState() => _repairingState();
}

class _repairingState extends State<repairing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Repairing",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => car_repair())));
              },
              child: Sevices(
                Title_arg: "Car Repairing",
                Price: "\$24",
                image: maskgrp1,
                fullname: "Wade Warren",
              ),
            ),
            Sevices(
              Title_arg: "Motorcycle Repairing",
              Price: "\$26",
              image: maskgrp2,
              fullname: "Freida Varnes",
            ),
            Sevices(
              Title_arg: "House Repairing",
              Price: "\$19",
              image: maskgrp3,
              fullname: "Rodolfo Goode",
            ),
            Sevices(
              Title_arg: "Walls Repairing",
              Price: "\$23",
              image: maskgrp4,
              fullname: "Alfonzo Schuler",
            ),
          ],
        ),
      ),
    );
  }
}
