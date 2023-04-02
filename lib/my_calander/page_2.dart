import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:task/color_constants.dart';
import 'package:task/widgets/Offers.dart';

import '../home/bookmarked.dart';
import '../home/notifications.dart';
import '../icon_constants.dart';
import '../my_bookings/cancelled.dart';

class calander_2 extends StatefulWidget {
  const calander_2({super.key});

  @override
  State<calander_2> createState() => _calander_2State();
}

class _calander_2State extends State<calander_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: bg_color,
        unselectedItemColor: searchfield_color,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: purple_color,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => calander_2())),
              child: Icon(
                Icons.text_snippet_outlined,
                color: searchfield_color,
              ),
            ),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Calender'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
        ],
        selectedItemColor: purple_color,
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
            Offers(argument: "Service Booking (2))", nextpage: calander_2()),
            Services(
                Title_arg: "House Cleaning",
                image: card_image3,
                fullname: "Nguyen Alex"),
            Services(
              Title_arg: "Cars Cleaning",
              image: card_image4,
              fullname: "Alex Nguyen",
            )
          ],
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
  final String fullname;
  final String Title_arg;
  final String image;
  const Services({
    super.key,
    required this.Title_arg,
    required this.image,
    required this.fullname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: textfield_color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(image),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Title_arg,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Text(
                fullname,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  color: purple_color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Upcoming",
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
    );
  }
}
