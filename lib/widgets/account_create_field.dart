import 'package:flutter/material.dart';

import '../color_constants.dart';

class account_create_field extends StatelessWidget {
  final String title;
  const account_create_field({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
          keyboardType: TextInputType.text,
          keyboardAppearance: Brightness.dark,
          decoration: InputDecoration(
              fillColor: textfield_color,
              filled: true,
              hintText: title,
              hintStyle: TextStyle(color: searchfield_color),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)))),
    );
  }
}
