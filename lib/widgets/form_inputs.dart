import 'package:flutter/material.dart';
import 'package:task/profile/help_center.dart';
import '../color_constants.dart';

class form_input extends StatelessWidget {
  final String hinttext;
  final IconData image;

  const form_input({
    super.key,
    required this.hinttext,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextFormField(
          style: styleset,
          keyboardType: TextInputType.text,
          keyboardAppearance: Brightness.dark,
          decoration: InputDecoration(
              fillColor: textfield_color,
              filled: true,
              hintText: hinttext,
              hintStyle: TextStyle(color: searchfield_color),
              prefixIcon: Icon(
                image,
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)))),
    );
  }
}
