import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../color_constants.dart';

class account_create_field_icon extends StatelessWidget {
  final String title;
  final IconData icondata;
  const account_create_field_icon({
    super.key,
    required this.title,
    required this.icondata,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
          keyboardType: TextInputType.text,
          keyboardAppearance: Brightness.dark,
          decoration: InputDecoration(
              suffixIcon: Icon(
                icondata,
                color: Colors.white,
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
