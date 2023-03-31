import 'package:flutter/material.dart';
import 'package:task/home/bookmarked.dart';
import 'package:task/home/notifications.dart';
import '../icon_constants.dart';
import '../main.dart';

class User_Tile extends StatelessWidget {
  const User_Tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        width: 50,
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => notifs()));
                },
                child: Image.asset(bell)),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => bookmarked()));
              },
              child: Image.asset(save),
            )
          ],
        ),
      ),
      leading: const CircleAvatar(
        backgroundImage: AssetImage(picture),
      ),
      title: const Text(
        'Good Morning 👋',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Text(
          'Andrew Ainsley',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }
}
