import 'package:flutter/material.dart';
import '../icon_constants.dart';

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
          children: [Image.asset(bell), Image.asset(save)],
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
