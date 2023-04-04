import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/color_constants.dart';
import 'package:task/icon_constants.dart';
import 'package:task/my_calander/page_2.dart';
import 'package:task/profile/profile.dart';

import '../main.dart';
import '../my_bookings/cancelled.dart';
import '../my_calander/page_1.dart';
import 'chatscreen.dart';

class chats extends StatefulWidget {
  const chats({super.key});

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bg_color,
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: purple_color,
            labelColor: searchfield_color,
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Calls",
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
            "Inbox",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        body: TabBarView(children: [
          ListView(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => chatscreen())),
                child: chat_tile(
                  image: call_icon2,
                  fullname: 'Lauralee Quinterro',
                  message: "I just finished it 😂😂",
                  time: '13:29',
                ),
              ),
              chat_tile(
                image: call_icon3,
                fullname: 'Alfonzo Schuessler',
                message: "omg, this is amazing 🔥🔥🔥",
                time: '13:29',
              ),
              chat_tile(
                image: call_icon4,
                fullname: 'Benny Spanbauer',
                message: "Wow, this is really epic 😎",
                time: '13:29',
              ),
              chat_tile(
                image: call_icon5,
                fullname: 'Marci Senter',
                message: "How are you? 😄😄",
                time: '13:29',
              ),
              chat_tile(
                image: call_icon1,
                fullname: 'Benny Spanbauer',
                message: "just ideas for next time 😆",
                time: '13:29',
              ),
              chat_tile(
                image: call_icon6,
                fullname: 'Pedro Huard',
                message: "perfect! 💯💯💯",
                time: '13:29',
              ),
              chat_tile(
                image: call_icon2,
                fullname: 'Marci Senter',
                message: "omg, this is amazing 🔥🔥🔥",
                time: '13:29',
              ),
              chat_tile(
                image: call_icon7,
                fullname: 'Lauralee Quinterro',
                message: "Wow, this is really epic 😎",
                time: '13:29',
              ),
            ],
          ),
          ListView(
            children: [
              call_tile(fullname: 'Lauralee Quinterro', image: call_icon),
              call_tile(fullname: 'Tanner Stafford', image: call_icon1),
              call_tile(fullname: 'Augustina Midgett', image: call_icon2),
              call_tile(fullname: 'Geoffrey Mott', image: call_icon3),
              call_tile(fullname: 'Roselle Ehrman', image: call_icon4),
              call_tile(fullname: 'Thad Eddings', image: call_icon5),
              call_tile(fullname: 'Daryl Nehls', image: call_icon6),
              call_tile(fullname: 'Francene Vandyne', image: call_icon7),
            ],
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

class call_tile extends StatelessWidget {
  final String image;
  final String fullname;

  const call_tile({
    super.key,
    required this.image,
    required this.fullname,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset(image),
          radius: 30,
        ),
        trailing: Icon(
          Icons.call,
          color: purple_color,
        ),
        title: Text(
          fullname,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.download_sharp,
              color: purple_color,
            ),
            Text(
              "Incoming | Dec 19, 2014",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class chat_tile extends StatelessWidget {
  final String image;
  final String fullname;
  final String message;
  final String time;
  const chat_tile({
    super.key,
    required this.image,
    required this.fullname,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset(image),
          radius: 30,
        ),
        trailing: Text(
          time,
          style: TextStyle(color: Colors.white),
        ),
        title: Text(
          fullname,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Row(
          children: [
            Text(
              message,
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class Services_v2 extends StatelessWidget {
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
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                  color: button_color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  button_name,
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
