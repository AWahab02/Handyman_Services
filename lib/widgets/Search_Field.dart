import 'package:flutter/material.dart';

import '../color_constants.dart';

class Search_Field extends StatelessWidget {
  const Search_Field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
          decoration: InputDecoration(
              fillColor: textfield_color,
              filled: true,
              hintText: 'Search',
              hintStyle: TextStyle(color: searchfield_color),
              prefixIcon: Icon(Icons.search, color: searchfield_color),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)))),
    );
  }
}
