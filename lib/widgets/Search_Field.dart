import 'package:flutter/material.dart';
import 'package:task/profile/help_center.dart';

import '../Lets_in/Sign_in.dart';
import '../color_constants.dart';
import 'action_chip.dart';

class Search_Field extends StatefulWidget {
  const Search_Field({
    super.key,
  });

  @override
  State<Search_Field> createState() => _Search_FieldState();
}

class _Search_FieldState extends State<Search_Field> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        style: styleset,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext buildcontext) {
                    double valuerange = 1.0;

                    return Container(
                      height: 1000,
                      color: bg_color,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                              child: Text(
                                "Filter",
                                style: TextStyle(
                                  color: Colors.white,
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
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.symmetric(horizontal: 24),
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                "Category",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                action_chip(title_name: "All"),
                                action_chip(title_name: "Cleaning"),
                                action_chip(title_name: "Repairing"),
                                action_chip(title_name: "Painting"),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.symmetric(horizontal: 24),
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                "Price",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            StatefulBuilder(builder: (context, setState) {
                              return Slider(
                                thumbColor: purple_color,
                                activeColor: purple_color,
                                inactiveColor: searchfield_color,
                                value: valuerange,
                                onChanged: (value) {
                                  setState(() {
                                    valuerange = value;
                                  });
                                  SemanticFormatterCallback:
                                  (double newRating) {
                                    return '${newRating}';
                                  };
                                },
                              );
                            }),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.symmetric(horizontal: 24),
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                "Rating",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ActionChip(
                                    label: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: purple_color,
                                        ),
                                        Text(
                                          "All",
                                          style: const TextStyle(
                                              color: purple_color,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                    backgroundColor: bg_color,
                                    side: const BorderSide(color: purple_color),
                                  ),
                                  ActionChip(
                                    label: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: purple_color,
                                        ),
                                        Text(
                                          "5",
                                          style: const TextStyle(
                                              color: purple_color,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                    backgroundColor: bg_color,
                                    side: const BorderSide(color: purple_color),
                                  ),
                                  ActionChip(
                                    label: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: purple_color,
                                        ),
                                        Text(
                                          "4",
                                          style: const TextStyle(
                                              color: purple_color,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                    backgroundColor: bg_color,
                                    side: const BorderSide(color: purple_color),
                                  ),
                                  ActionChip(
                                    label: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: purple_color,
                                        ),
                                        Text(
                                          "3",
                                          style: const TextStyle(
                                              color: purple_color,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                    backgroundColor: bg_color,
                                    side: const BorderSide(color: purple_color),
                                  ),
                                  ActionChip(
                                    label: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: purple_color,
                                        ),
                                        Text(
                                          "2",
                                          style: const TextStyle(
                                              color: purple_color,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                    backgroundColor: bg_color,
                                    side: const BorderSide(color: purple_color),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              width: 380,
                              color: searchfield_color,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Reset",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
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
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Filter",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 24, left: 24, right: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: purple_color),
                                  height: 58,
                                  width: 150,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Icon(
              Icons.settings,
              color: searchfield_color,
            ),
          ),
          fillColor: textfield_color,
          filled: true,
          hintText: 'Search',
          hintStyle: TextStyle(color: searchfield_color),
          prefixIcon: Icon(Icons.search, color: searchfield_color),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
