import 'package:flutter/material.dart';
import 'package:task/color_constants.dart';
import 'package:task/forget_reset/create_new_pass.dart';
import 'package:task/home/all_services.dart';
import 'package:task/home/popular_services.dart';
import 'package:task/home/special_offers.dart';
import 'package:task/icon_constants.dart';
import 'package:task/inbox/chats.dart';
import 'package:task/my_bookings/cancelled.dart';
import 'package:task/my_calander/page_1.dart';
import 'package:task/onboarding_screens/splash.dart';
import 'package:task/profile/profile.dart';
import 'package:task/service_details/appliance.dart';
import 'package:task/service_details/appliance_detail.dart';
import 'package:task/service_details/car_repair.dart';
import 'package:task/service_details/cleaning.dart';
import 'package:task/service_details/house_cleaning.dart';
import 'package:task/service_details/laundry.dart';
import 'package:task/service_details/laundry_detail.dart';
import 'package:task/service_details/painting.dart';
import 'package:task/service_details/painting_walls.dart';
import 'package:task/service_details/plumbing.dart';
import 'package:task/service_details/plumbing_deatils.dart';
import 'package:task/service_details/repairing.dart';
import 'package:task/service_details/shifting.dart';
import 'package:task/service_details/shifting_details.dart';
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
          const Offers(
            argument: "Special Offers",
            nextpage: Special_Offers(),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(Special_offers)),
          const Offers(argument: "Services", nextpage: all_services()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                icon_card(
                    title: "Cleaning",
                    image: icon1,
                    colour: icon1_bg,
                    nextscreen: cleaning()),
                icon_card(
                    title: "Repairing",
                    image: icon2,
                    colour: icon2_bg,
                    nextscreen: repairing()),
                icon_card(
                    title: "Painting",
                    image: icon3,
                    colour: icon3_bg,
                    nextscreen: painting()),
                icon_card(
                    title: "Laundry",
                    image: icon4,
                    colour: icon4_bg,
                    nextscreen: laundry()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                icon_card(
                    title: "Appliance",
                    image: icon5,
                    colour: icon5_bg,
                    nextscreen: appliance()),
                icon_card(
                    title: "Plumber",
                    image: icon6,
                    colour: icon6_bg,
                    nextscreen: plumbing()),
                icon_card(
                    title: "Shifting",
                    image: icon7,
                    colour: icon7_bg,
                    nextscreen: shifting()),
                icon_card(
                    title: "More",
                    image: icon8,
                    colour: icon8_bg,
                    nextscreen: cleaning()),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 10,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            color: searchfield_color,
          ),
          const Offers(
            argument: "Most Popular Services",
            nextpage: popular_services(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              action_chip(title_name: "All"),
              action_chip(title_name: "Cleaning"),
              action_chip(title_name: "Repairing"),
              action_chip(title_name: "Painting"),
            ],
          ),
          Sevices(
            Title_arg: "House Cleaning",
            Price: "\$25",
            image: card_image1,
            fullname: "FullName",
          ),
          Sevices(
            Title_arg: "Floor Cleaning",
            Price: "\$20",
            image: card_image2,
            fullname: "FullName",
          ),
          Sevices(
            Title_arg: "Washing Clothes",
            Price: "\$22",
            image: card_image3,
            fullname: "FullName",
          ),
          Sevices(
            Title_arg: "Bathroom Cleaning",
            Price: "\$24",
            image: card_image4,
            fullname: "FullName",
          ),
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
