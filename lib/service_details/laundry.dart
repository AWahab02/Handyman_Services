import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/service_details/laundry_detail.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class laundry extends StatefulWidget {
  const laundry({super.key});

  @override
  State<laundry> createState() => _laundryState();
}

class _laundryState extends State<laundry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Laundry",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => laundry_detail())));
              },
              child: Sevices(
                Title_arg: "Laundry Services",
                Price: "\$24",
                image: maskgrp1,
                fullname: "Jane Cooper",
              ),
            ),
            Sevices(
              Title_arg: "Laundry Services",
              Price: "\$26",
              image: maskgrp2,
              fullname: "Jane Cooper",
            ),
            Sevices(
              Title_arg: "Laundry Woman Ser...",
              Price: "\$19",
              image: maskgrp3,
              fullname: "Chieko Chu",
            ),
            Sevices(
              Title_arg: "Laundry Services",
              Price: "\$23",
              image: maskgrp4,
              fullname: "Tanner Staff",
            ),
            Sevices(
              Title_arg: "Laundry Man Services",
              Price: "\$23",
              image: maskgrp4,
              fullname: "Leif Floyd",
            ),
          ],
        ),
      ),
    );
  }
}
