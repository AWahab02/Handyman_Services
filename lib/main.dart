import 'package:flutter/material.dart';
import 'package:task/color_constants.dart';
import 'package:task/icon_constants.dart';
import 'package:task/onboarding_screens/splash.dart';
import 'package:task/widgets/Icon_Card.dart';
import 'package:task/widgets/Offers.dart';
import 'package:task/widgets/Search_Field.dart';
import 'package:task/widgets/Services.dart';
import 'package:task/widgets/User_Tile.dart';
import 'widgets/action_chip.dart';
import 'onboarding_screens/splash.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Urbanist'),
    home: const Splash(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      body: ListView(
        children: [
          const User_Tile(),
          const Search_Field(),
          const Offers(argument: "Special Offers"),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(Special_offers)),
          const Offers(argument: "Services"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                icon_card(title: "Cleaning", image: icon1, colour: icon1_bg),
                icon_card(title: "Repairing", image: icon2, colour: icon2_bg),
                icon_card(title: "Painting", image: icon3, colour: icon3_bg),
                icon_card(title: "Laundry", image: icon4, colour: icon4_bg),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                icon_card(title: "Appliance", image: icon5, colour: icon5_bg),
                icon_card(title: "Plumber", image: icon6, colour: icon6_bg),
                icon_card(title: "Shifting", image: icon7, colour: icon7_bg),
                icon_card(title: "More", image: icon8, colour: icon8_bg),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 10,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            color: searchfield_color,
          ),
          const Offers(argument: "Most Popular Services"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              action_chip(title_name: "All"),
              action_chip(title_name: "Cleaning"),
              action_chip(title_name: "Repairing"),
              action_chip(title_name: "Painting"),
            ],
          ),
          const Sevices(
              Title_arg: "House Cleaning", Price: "\$25", image: card_image1),
          const Sevices(
              Title_arg: "Floor Cleaning", Price: "\$20", image: card_image2),
          const Sevices(
              Title_arg: "Washing Clothes", Price: "\$22", image: card_image3),
          const Sevices(
              Title_arg: "Bathroom Cleaning",
              Price: "\$24",
              image: card_image4),
        ],
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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.text_snippet_outlined), label: 'Bookings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: 'Calender'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
          ],
          selectedItemColor: purple_color,
        ),
      ),
    );
  }
}
