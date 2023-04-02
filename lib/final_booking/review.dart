import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/color_constants.dart';
import 'package:task/final_booking/pin.dart';
import 'package:task/icon_constants.dart';

class review_summary extends StatefulWidget {
  const review_summary({super.key});

  @override
  State<review_summary> createState() => _review_summaryState();
}

class _review_summaryState extends State<review_summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Review Summary",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(
              width: 380,
              height: 238,
              decoration: BoxDecoration(
                color: textfield_color,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  review_tile(left: "Services", right: "House Cleaning"),
                  review_tile(left: "Category", right: "Cleaning"),
                  review_tile(left: "Workers", right: "Jenny Wilson"),
                  review_tile(
                      left: "Date & Time", right: "Dec 23, 2024 | 10:00 AM"),
                  review_tile(left: "Working Hours", right: "2 hours"),
                ],
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: textfield_color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("House Cleaning Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 380,
              height: 160,
              decoration: BoxDecoration(
                color: textfield_color,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  review_tile(left: "House Cleaning", right: "\$125.50"),
                  review_tile(left: "Promo", right: "\-37.50"),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    color: Colors.grey[800],
                    height: 1,
                    width: 300,
                  ),
                  review_tile(left: "Total", right: "\$-87.50"),
                ],
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: textfield_color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(google_logo),
                    Text("**** **** **** **449",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change",
                        style: TextStyle(
                            color: purple_color,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => payment_pin())),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: Text(
                    "Confirm Payment",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: purple_color),
                height: 58,
                width: 380,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class review_tile extends StatelessWidget {
  final String left;
  final String right;
  const review_tile({
    super.key,
    required this.left,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              left,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            Text(
              right,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
