import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import 'package:task/forget_reset/create_new_pass.dart';
import '../color_constants.dart';

class forgot_pass2 extends StatefulWidget {
  const forgot_pass2({super.key});

  @override
  State<forgot_pass2> createState() => _forgot_pass2State();
}

class _forgot_pass2State extends State<forgot_pass2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "Forgot Password",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 125),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Code has been sent to +1 111 ****99",
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
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 60),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Resend code in 55s",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => create_password())),
              child: Container(
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                margin: EdgeInsets.only(top: 98, left: 24, right: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: purple_color),
                height: 58,
                width: 380,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
