import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task/profile/help_center.dart';

import '../color_constants.dart';

class account_create_field_country extends StatelessWidget {
  final String title;
  const account_create_field_country({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
          style: styleset,
          keyboardType: TextInputType.text,
          keyboardAppearance: Brightness.dark,
          decoration: InputDecoration(
              prefixIcon: CountryCodePicker(
                textStyle: TextStyle(color: Colors.white),
                initialSelection: 'PK',
              ),
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
