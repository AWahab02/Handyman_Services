import 'package:flutter/material.dart';

import '../color_constants.dart';
import '../icon_constants.dart';

class Sevices extends StatelessWidget {
  final String fullname;
  final String Title_arg;
  final String Price;
  final String image;
  const Sevices({
    super.key,
    required this.Title_arg,
    required this.Price,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      fullname,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 100),
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
                                          "Remove from Bookmark?",
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
                                      Sevices(
                                          Title_arg: this.Title_arg,
                                          Price: this.Price,
                                          image: this.image,
                                          fullname: this.fullname),
                                      Row(
                                        children: [
                                          Container(
                                            child: Center(
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16),
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
                                          Container(
                                            child: Center(
                                              child: Text(
                                                "Yes, Remove",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16),
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Icon(
                        Icons.bookmark,
                        color: purple_color,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  Title_arg,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  Price,
                  style: TextStyle(
                      color: purple_color,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                    Text(
                      "4.8 | 8,289 reviews",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
