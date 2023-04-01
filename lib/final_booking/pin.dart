import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import '../color_constants.dart';
import '../icon_constants.dart';

class payment_pin extends StatefulWidget {
  const payment_pin({super.key});

  @override
  State<payment_pin> createState() => _payment_pinState();
}

class _payment_pinState extends State<payment_pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Enter Your PIN",
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
                "Enter Your Payment to Confirm Payment.",
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
            onTap: () {
              showDialog(
                  context: context,
                  builder: ((context) {
                    return Dialog(
                      insetPadding:
                          EdgeInsets.symmetric(vertical: 140, horizontal: 50),
                      backgroundColor: textfield_color,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          Image.asset(fingerprint_alert),
                          SizedBox(height: 32),
                          Center(
                            child: Container(
                              child: Text(
                                "Booking Succesful!",
                                style: TextStyle(
                                    color: purple_color,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: 280,
                            child: Text(
                              "You have successfully made payment and book the services.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "View E-Receipt",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            margin:
                                EdgeInsets.only(top: 40.5, left: 24, right: 24),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: purple_color),
                            height: 58,
                            width: 280,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "Message Workers",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            margin:
                                EdgeInsets.only(top: 20.5, left: 24, right: 24),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: searchfield_color),
                            height: 58,
                            width: 280,
                          ),
                        ],
                      ),
                    );
                  }));
            },
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
