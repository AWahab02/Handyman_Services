import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import '../color_constants.dart';

class create_pin extends StatefulWidget {
  const create_pin({super.key});

  @override
  State<create_pin> createState() => _create_pinState();
}

class _create_pinState extends State<create_pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Create New PIN",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 125),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Add a PIN number to make your account more secure.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: PinCodeTextField(
              obscureText: true,
              appContext: context,
              length: 4,
              onChanged: ((value) {}),
              enableActiveFill: true,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              pinTheme: PinTheme(
                disabledColor: purple_color,
                inactiveColor: textfield_color,
                inactiveFillColor: textfield_color,
                activeColor: textfield_color,
                activeFillColor: textfield_color,
                selectedColor: purple_color,
                selectedFillColor: textfield_color,
                borderWidth: 1,
                borderRadius: BorderRadius.circular(20),
                fieldWidth: 83,
                fieldHeight: 61,
                shape: PinCodeFieldShape.box,
                errorBorderColor: searchfield_color,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => fingerprint())),
            child: Container(
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              margin: EdgeInsets.only(top: 131.5, left: 24, right: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: purple_color),
              height: 58,
              width: 380,
            ),
          ),
        ],
      ),
    );
  }
}
