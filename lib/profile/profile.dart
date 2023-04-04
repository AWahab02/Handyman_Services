import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/Lets_in/Sign_in.dart';
import 'package:task/main.dart';
import 'package:task/profile/edit_profile.dart';
import 'package:task/profile/language.dart';
import 'package:task/profile/notification.dart';
import 'package:task/profile/payment.dart';
import 'package:task/profile/privacy_policy.dart';
import 'package:task/profile/security.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../inbox/chats.dart';
import '../my_bookings/cancelled.dart';
import '../my_calander/page_1.dart';
import 'help_center.dart';
import 'invite_friends.dart';

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
          "Add Card",
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
              nextscreen: profile_payments(),
            ),
            profile_tile(
              iconss: Icons.language,
              title: 'Security',
              nextscreen: security_profile(),
            ),
            profile_tile(
              iconss: Icons.remove_red_eye,
              title: 'Language',
              nextscreen: languages_profile(),
            ),
            profile_tile(
              iconss: Icons.lock,
              title: 'Dark Mode',
              nextscreen: edit_profile(),
            ),
            profile_tile(
              iconss: Icons.live_help_sharp,
              title: 'Privacy Policy',
              nextscreen: privacy_policy(),
            ),
            profile_tile(
              iconss: Icons.people_alt_outlined,
              title: 'Invite Friends',
              nextscreen: invite_friends(),
            ),
            profile_tile(
              iconss: Icons.help,
              title: 'Help Center',
              nextscreen: help_center(),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext buildcontext) {
                      return Container(
                        height: 240,
                        color: bg_color,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 24, horizontal: 24),
                                child: Text(
                                  "Logout",
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
                                  margin: EdgeInsets.symmetric(horizontal: 24),
                                  padding: EdgeInsets.only(top: 24),
                                  child: Text(
                                    "Are you sure you want to log out?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
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
                                        borderRadius: BorderRadius.circular(25),
                                        color: textfield_color),
                                    height: 58,
                                    width: 150,
                                  ),
                                  GestureDetector(
                                    onTap: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => sign_in())),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Yes, Logout",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
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
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ),
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
