import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/widgets/Search_Field.dart';

import '../color_constants.dart';
import '../icon_constants.dart';
import '../widgets/action_chip.dart';

class help_center extends StatefulWidget {
  const help_center({super.key});

  @override
  State<help_center> createState() => _help_centerState();
}

class _help_centerState extends State<help_center> {
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
                text: "FAQ",
              ),
              Tab(
                text: "Contact Us",
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: bg_color,
          actions: [
            Image.asset(
              bell,
              color: Colors.white,
            ),
          ],
          title: Text(
            "Help Center",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        action_chip(title_name: "General"),
                        action_chip(title_name: "Account"),
                        action_chip(title_name: "Services"),
                        action_chip(title_name: "Payment"),
                      ],
                    ),
                    Search_Field(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        tileColor: textfield_color,
                        title: Text(
                          "What is Hamo?",
                          style: styleset,
                        ),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          color: purple_color,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        tileColor: textfield_color,
                        title: Text(
                          "How do I cancel a booking??",
                          style: styleset,
                        ),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          color: purple_color,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        tileColor: textfield_color,
                        title: Text(
                          "Is Hamo free to use??",
                          style: styleset,
                        ),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          color: purple_color,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        tileColor: textfield_color,
                        title: Text(
                          "How to make offer on Hamo??",
                          style: styleset,
                        ),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          color: purple_color,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        tileColor: textfield_color,
                        title: Text(
                          "How to use Homo?",
                          style: styleset,
                        ),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          color: purple_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 24),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: textfield_color,
                    title: Text(
                      "WhatsApp",
                      style: styleset,
                    ),
                    leading: Icon(
                      Icons.call,
                      color: purple_color,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: textfield_color,
                    title: Text(
                      "Website",
                      style: styleset,
                    ),
                    leading: Icon(
                      Icons.network_wifi_3_bar,
                      color: purple_color,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: textfield_color,
                    title: Text(
                      "Facebook",
                      style: styleset,
                    ),
                    leading: Icon(
                      Icons.headphones,
                      color: purple_color,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: textfield_color,
                    title: Text(
                      "Twitter",
                      style: styleset,
                    ),
                    leading: Icon(
                      Icons.headphones,
                      color: purple_color,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: textfield_color,
                    title: Text(
                      "Instagram",
                      style: styleset,
                    ),
                    leading: Icon(
                      Icons.camera_alt,
                      color: purple_color,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle styleset =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w700);
