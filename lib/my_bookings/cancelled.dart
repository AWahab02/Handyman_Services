import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/color_constants.dart';
import 'package:task/final_booking/booking_page1.dart';
import 'package:task/final_booking/location.dart';
import 'package:task/final_booking/payment.dart';
import 'package:task/icon_constants.dart';
import 'package:task/my_calander/page_2.dart';
import 'package:task/profile/profile.dart';

import '../final_booking/promo_page.dart';
import '../inbox/chats.dart';
import '../main.dart';
import '../my_calander/page_1.dart';

class cancelled extends StatefulWidget {
  const cancelled({super.key});

  @override
  State<cancelled> createState() => _cancelledState();
}

class _cancelledState extends State<cancelled> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: bg_color,
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: purple_color,
            labelColor: searchfield_color,
            tabs: [
              Tab(
                text: "Upcoming",
              ),
              Tab(
                text: "Completed",
              ),
              Tab(
                text: "Cancelled",
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: bg_color,
          leading: Image.asset(h_icon),
          actions: [
            Icon(
              Icons.search,
              color: searchfield_color,
            ),
            Image.asset(
              bell,
              color: searchfield_color,
            ),
          ],
          title: Text(
            "My Bookings",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  padding: EdgeInsets.only(top: 120),
                  child: Image.asset(upcoming),
                ),
                Center(
                  child: Container(
                    child: Text(
                      "You have no upcoming booking",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "You do not have a upcoming booking. Make a new booking by clicking the button below",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Center(
                    child: Text(
                      "Make New Booking",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[800]),
                  height: 58,
                  width: 380,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Services_v2(
                    Title_arg: "Plumbing Repair",
                    image: card_image1,
                    fullname: "Chantail Smith",
                    button_color: Color(0xff4AAF57),
                    button_name: "Completed"),
                Services_v2(
                    Title_arg: "Plumbing Repair",
                    image: card_image2,
                    fullname: "Chantail Smith",
                    button_color: Color(0xff4AAF57),
                    button_name: "Completed"),
                Services_v2(
                    Title_arg: "Plumbing Repair",
                    image: card_image3,
                    fullname: "Chantail Smith",
                    button_color: Color(0xff4AAF57),
                    button_name: "Completed"),
                Services_v2(
                    Title_arg: "Plumbing Repair",
                    image: card_image4,
                    fullname: "Chantail Smith",
                    button_color: Color(0xff4AAF57),
                    button_name: "Completed"),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Services_v2(
                    Title_arg: "Plumbing Repair",
                    image: card_image1,
                    fullname: "Chantail Smith",
                    button_color: Colors.red,
                    button_name: "Cancelled"),
                Services_v2(
                    Title_arg: "Plumbing Repair",
                    image: card_image2,
                    fullname: "Chantail Smith",
                    button_color: Colors.red,
                    button_name: "Cancelled"),
                Services_v2(
                    Title_arg: "Plumbing Repair",
                    image: card_image3,
                    fullname: "Chantail Smith",
                    button_color: Colors.red,
                    button_name: "Cancelled"),
                Services_v2(
                    Title_arg: "Plumbing Repair",
                    image: card_image4,
                    fullname: "Chantail Smith",
                    button_color: Colors.red,
                    button_name: "Cancelled"),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: Container(
          width: 30,
          margin: const EdgeInsets.all(7),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: bg_color,
            unselectedItemColor: searchfield_color,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
            onTap: (value) {
              if (value == 0) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyApp()));
              }

              if (value == 1) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => cancelled()));
              }

              if (value == 2) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => calander_1()));
              }

              if (value == 3) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => chats()));
              }

              if (value == 4) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => profile_1()));
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => cancelled())),
                  child: Icon(Icons.text_snippet_outlined),
                ),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => calander_1())),
                      child: Icon(Icons.calendar_month_outlined)),
                  label: 'Calender'),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => chats())),
                      child: Icon(Icons.message_outlined)),
                  label: 'Inbox'),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => profile_1())),
                      child: Icon(Icons.person_outline_rounded)),
                  label: 'Profile'),
            ],
            selectedItemColor: purple_color,
          ),
        ),
      ),
    );
  }
}

class Services_v2 extends StatefulWidget {
  final String fullname;
  final String Title_arg;
  final String image;
  final Color button_color;
  final String button_name;
  const Services_v2({
    super.key,
    required this.Title_arg,
    required this.image,
    required this.fullname,
    required this.button_color,
    required this.button_name,
  });

  @override
  State<Services_v2> createState() => _Services_v2State();
}

class _Services_v2State extends State<Services_v2> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: textfield_color),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(widget.image),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.Title_arg,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.fullname,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: widget.button_color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      widget.button_name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              Icon(
                Icons.message,
                color: Colors.white,
              ),
            ],
          ),
          if (isExpanded)
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        map,
                      ),
                    ),
                    Image.asset(location),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext buildcontext) {
                              return Container(
                                height: 380,
                                color: bg_color,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 24, horizontal: 24),
                                        child: Text(
                                          "Cancel Booking",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: Colors.grey[800],
                                        height: 1,
                                        width: 380,
                                      ),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 24),
                                          padding: EdgeInsets.only(top: 24),
                                          child: Text(
                                            "Are you sure want to cancel your service booking?",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 24),
                                          padding: EdgeInsets.only(
                                              top: 12, bottom: 24),
                                          child: Text(
                                            "Only 80% of the money you can refund from your payment according to our policy",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: Colors.grey[800],
                                        height: 1,
                                        width: 380,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: Center(
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12),
                                              ),
                                            ),
                                            margin: EdgeInsets.only(
                                                top: 24, left: 24, right: 12),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                color: textfield_color),
                                            height: 58,
                                            width: 150,
                                          ),
                                          GestureDetector(
                                            onTap: () => Navigator.of(context)
                                                .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        booking_4())),
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Yes, Cancel Booking",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              margin: EdgeInsets.only(
                                                  top: 24, left: 24, right: 12),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  color: purple_color),
                                              height: 58,
                                              width: 150,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "Cancel Booking",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        margin: EdgeInsets.only(top: 18, left: 24),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: searchfield_color),
                        height: 58,
                        width: 140,
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "View E - Receipt",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                      margin: EdgeInsets.only(top: 18, left: 24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: purple_color),
                      height: 58,
                      width: 140,
                    ),
                  ],
                ),
              ],
            ),
          IconButton(
            icon: Icon(!isExpanded
                ? Icons.arrow_drop_down
                : Icons.arrow_drop_up_sharp),
            color: Colors.white,
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ],
      ),
    );
  }
}
