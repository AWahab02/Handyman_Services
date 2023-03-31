import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../color_constants.dart';
import '../icon_constants.dart';

class notifs extends StatefulWidget {
  const notifs({super.key});

  @override
  State<notifs> createState() => _notifsState();
}

class _notifsState extends State<notifs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 24, top: 24),
                child: Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: notif_tile(
                  title1: "Payment Succesful!",
                  subtitle: "You have made a services payment",
                  image: notif0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: notif_tile(
                  title1: "New Category Services!",
                  subtitle: "Now the plumbing service is available",
                  image: notif1),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 24, top: 24),
                child: Text(
                  "Yesterday",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            notif_tile(
                title1: "Today's Special Offers",
                subtitle: "You get a special promo today!",
                image: notif2),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 24, top: 24),
                child: Text(
                  "December 22, 2024",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            notif_tile(
                title1: "Credit Card Connected!",
                subtitle: "Credit card has been linked!",
                image: notif3),
            notif_tile(
                title1: "Account Setup Succesful!",
                subtitle: "Your account has been created",
                image: notif4),
          ],
        ),
      ),
    );
  }
}

class notif_tile extends StatelessWidget {
  final String title1;
  final String subtitle;
  final String image;
  const notif_tile({
    super.key,
    required this.title1,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      height: 128,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: textfield_color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: icon1_bg,
              ),
              child: Image.asset(image)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(title1,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 8),
              Container(
                width: 200,
                child: Text(subtitle,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
