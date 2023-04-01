import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/service_details/painting_walls.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class painting extends StatefulWidget {
  const painting({super.key});

  @override
  State<painting> createState() => _paintingState();
}

class _paintingState extends State<painting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Painting",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => painting_detail())));
              },
              child: Sevices(
                Title_arg: "Painting House Walls",
                Price: "\$24",
                image: maskgrp1,
                fullname: "Brooklyn Simon",
              ),
            ),
            Sevices(
              Title_arg: "Painting Walls",
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
              Title_arg: "Painting Office Walls",
              Price: "\$23",
              image: maskgrp4,
              fullname: "Freda Varnes",
            ),
            Sevices(
              Title_arg: "Painting Walls",
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
