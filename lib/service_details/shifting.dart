import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/service_details/shifting_details.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/Services.dart';
import '../widgets/action_chip.dart';

class shifting extends StatefulWidget {
  const shifting({super.key});

  @override
  State<shifting> createState() => _shiftingState();
}

class _shiftingState extends State<shifting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Shifting",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => shifting_detail())));
              },
              child: Sevices(
                Title_arg: "House Shifting",
                Price: "\$24",
                image: maskgrp1,
                fullname: "Jenny Wilson",
              ),
            ),
            Sevices(
              Title_arg: "Office Shifting",
              Price: "\$26",
              image: maskgrp2,
              fullname: "Rayford Chail",
            ),
            Sevices(
              Title_arg: "Villa Shifting",
              Price: "\$19",
              image: maskgrp3,
              fullname: "Jenetta Rolo",
            ),
            Sevices(
              Title_arg: "House Shifting",
              Price: "\$23",
              image: maskgrp4,
              fullname: "Freda Varnes",
            ),
            Sevices(
              Title_arg: "House Shifting",
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
