import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:task/color_constants.dart';
import 'package:task/main.dart';
import 'package:task/my_calander/page_2.dart';
import 'package:task/widgets/Offers.dart';
import '../inbox/chats.dart';
import '../profile/profile.dart';
import 'page_2.dart';
import '../icon_constants.dart';
import '../my_bookings/cancelled.dart';

class calander_1 extends StatefulWidget {
  const calander_1({super.key});

  @override
  State<calander_1> createState() => _calander_1State();
}

class _calander_1State extends State<calander_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        MaterialPageRoute(builder: (context) => calander_1())),
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
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        leading: Image.asset(h_icon),
        actions: [
          Image.asset(
            bell,
            color: searchfield_color,
          ),
        ],
        title: Text(
          "My Calendar",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
              child: SfCalendar(
                monthCellBuilder: (context, details) {
                  return Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      details.date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
                viewHeaderStyle: ViewHeaderStyle(
                    dayTextStyle: TextStyle(color: Colors.white)),
                headerStyle: CalendarHeaderStyle(
                    textStyle: TextStyle(color: Colors.white)),
                todayHighlightColor: searchfield_color,
                todayTextStyle: TextStyle(color: Colors.black),
                appointmentTextStyle: TextStyle(color: Colors.white),
                selectionDecoration: BoxDecoration(
                  color: Color.fromRGBO(114, 16, 255, 0.5),
                  shape: BoxShape.circle,
                ),
                view: CalendarView.month,
                backgroundColor: textfield_color,
              ),
            ),
            Offers(argument: "Service Booking (0))", nextpage: calander_2()),
            Container(
              width: 380,
              height: 300,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Image.asset(clipboard),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "You have no service booking",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                      child: Text(
                    "You don't have a service booking on this date",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
