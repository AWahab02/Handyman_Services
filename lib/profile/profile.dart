import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/profile/edit_profile.dart';
import 'package:task/profile/notification.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../inbox/chats.dart';
import '../my_bookings/cancelled.dart';
import '../my_calander/page_1.dart';

class profile_1 extends StatefulWidget {
  const profile_1({super.key});

  @override
  State<profile_1> createState() => _profile_1State();
}

class _profile_1State extends State<profile_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        leading: Image.asset(h_icon),
        actions: [
          Icon(
            Icons.message,
            color: searchfield_color,
          ),
        ],
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Center(
                child: CircleAvatar(
                  child: Image.asset(profile_icon),
                  backgroundColor: textfield_color,
                  radius: 70,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Text(
                  "Andrew Ainsley",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Center(
                child: Text(
                  "andrew_ainsley@yourdomain.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Center(
                  child: Container(
                height: 1,
                width: 380,
                color: searchfield_color,
              )),
            ),
            profile_tile(
              iconss: Icons.person_2_outlined,
              title: 'Edit Profile',
              nextscreen: edit_profile(),
            ),
            profile_tile(
              iconss: Icons.notifications,
              title: 'Notification',
              nextscreen: notification_profile(),
            ),
            profile_tile(
              iconss: Icons.security,
              title: 'Payment',
              nextscreen: edit_profile(),
            ),
            profile_tile(
              iconss: Icons.language,
              title: 'Security',
              nextscreen: edit_profile(),
            ),
            profile_tile(
              iconss: Icons.remove_red_eye,
              title: 'Language',
              nextscreen: edit_profile(),
            ),
            profile_tile(
              iconss: Icons.lock,
              title: 'Dark Mode',
              nextscreen: edit_profile(),
            ),
            profile_tile(
              iconss: Icons.live_help_sharp,
              title: 'Privacy Policy',
              nextscreen: edit_profile(),
            ),
            profile_tile(
              iconss: Icons.people_alt_outlined,
              title: 'Invite Friends',
              nextscreen: edit_profile(),
            ),
            profile_tile(
              iconss: Icons.logout,
              title: 'Logout',
              nextscreen: edit_profile(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 30,
        margin: const EdgeInsets.all(7),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: bg_color,
          unselectedItemColor: searchfield_color,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => cancelled())),
                child: Icon(Icons.text_snippet_outlined),
              ),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => calander_1())),
                    child: Icon(Icons.calendar_month_outlined)),
                label: 'Calender'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => chats())),
                    child: Icon(Icons.message_outlined)),
                label: 'Inbox'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => profile_1())),
                    child: Icon(Icons.person_outline_rounded)),
                label: 'Profile'),
          ],
          selectedItemColor: purple_color,
        ),
      ),
    );
  }
}

class profile_tile extends StatelessWidget {
  final String title;
  final IconData iconss;
  final Widget nextscreen;
  const profile_tile({
    super.key,
    required this.title,
    required this.iconss,
    required this.nextscreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => nextscreen)),
      child: ListTile(
        leading: Icon(
          iconss,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
