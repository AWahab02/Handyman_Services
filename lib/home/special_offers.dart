import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../color_constants.dart';
import '../icon_constants.dart';

class Special_Offers extends StatefulWidget {
  const Special_Offers({super.key});

  @override
  State<Special_Offers> createState() => _Special_OffersState();
}

class _Special_OffersState extends State<Special_Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Special Offers",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(promo0)),
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(promo1)),
            Container(
                padding: EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(promo2)),
            Container(
                padding: EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(promo3)),
          ],
        ),
      ),
    );
  }
}
