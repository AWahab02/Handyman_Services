import 'package:flutter/material.dart';
import 'package:task/icon_constants.dart';
import 'package:task/service_details/painting_walls.dart';
import 'package:task/service_details_2/shifting_booking.dart';
import 'package:task/widgets/Offers.dart';

import '../color_constants.dart';
import '../widgets/action_chip.dart';

class shifting_detail extends StatefulWidget {
  const shifting_detail({super.key});

  @override
  State<shifting_detail> createState() => _shifting_detailState();
}

class _shifting_detailState extends State<shifting_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(detail_6),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "House Shifting",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: purple_color,
                    size: 40,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Jenny Wilson",
                    style: TextStyle(
                      color: purple_color,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.star_half,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "4.8 | 8,289 reviews",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    color: icon1_bg,
                    height: 24,
                    width: 64,
                    child: Center(
                      child: Text(
                        "Cleaning",
                        style: TextStyle(
                            color: purple_color,
                            fontWeight: FontWeight.w700,
                            fontSize: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.location_on,
                    color: purple_color,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "255 Grand Park Avenue, New York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    "\$20",
                    style: TextStyle(
                        color: purple_color,
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "(Floor Price)",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              height: 1,
              width: 380,
              color: Colors.grey[800],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment.centerLeft,
              child: Text(
                "About me",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              alignment: Alignment.centerLeft,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim nisi ut aliquip.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Offers(argument: "Photos & Videos", nextpage: painting_detail()),
            Row(
              children: [
                Image.asset(col10),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Image.asset(col11),
                    SizedBox(height: 10),
                    Image.asset(col12),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(col20),
                      SizedBox(height: 10),
                      Image.asset(col21),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(col22),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star_half_outlined,
                  color: Colors.amber,
                ),
                Text(
                  "4.8 (4,479 reviews)",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 90,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => painting_detail())));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: purple_color,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            color: purple_color, fontWeight: FontWeight.w700),
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
                            color: purple_color, fontWeight: FontWeight.w700),
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
                            color: purple_color, fontWeight: FontWeight.w700),
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
                            color: purple_color, fontWeight: FontWeight.w700),
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
                            color: purple_color, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  onPressed: () {},
                  backgroundColor: bg_color,
                  side: const BorderSide(color: purple_color),
                ),
              ],
            ),
            review_tile(
              name: "Lauralee Quintero",
              image: ellipse0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                child: Text(
                  "Awesome! this is what i was looking for, i recommend to everyone ❤️❤️️❤️",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            review_2(),
            review_tile(
              name: "Quinton Mcclure",
              image: ellipse1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                child: Text(
                  "The workers are very professional and the results are very satisfying! I like it very much! 💯💯💯",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            review_2(),
            review_tile(
              name: "Chieko Chute",
              image: ellipse2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                child: Text(
                  "This is the first time I've used his services, and the results were amazing! 👍👍👍",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            review_2(),
            Row(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  margin:
                      EdgeInsets.only(top: 20, left: 24, right: 12, bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: textfield_color),
                  height: 58,
                  width: 150,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => shifting_booking())));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 20, left: 24, right: 12, bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: purple_color),
                    height: 58,
                    width: 150,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class review_2 extends StatelessWidget {
  const review_2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15),
        child: Row(
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "783",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "3 weeks ago",
              style: TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}

class review_tile extends StatelessWidget {
  final String name;
  final String image;
  const review_tile({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Image.asset(image)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.white),
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
                      color: purple_color, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            onPressed: () {},
            backgroundColor: bg_color,
            side: const BorderSide(color: purple_color),
          ),
        ],
      ),
      trailing: Icon(
        Icons.more_horiz_rounded,
        color: Colors.white,
      ),
    );
  }
}
