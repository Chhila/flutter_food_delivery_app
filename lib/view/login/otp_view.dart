import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/login/new_password_view.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  @override
  Widget build(BuildContext context) {
    final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
    final TextEditingController emailController = TextEditingController();
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "We have send an OTP to your Mobile",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: TColor.primaryText),
              ),
              SizedBox(height: media.height * 0.01),
              Text(
                textAlign: TextAlign.center,
                "Please check your mobile number 0712345678 \ncontinue to reset your password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: TColor.secondPrimary),
              ),
              SizedBox(height: media.height * 0.04),
              SizedBox(
                child: OtpPinField(
                  key: _otpPinFieldController,
                  onSubmit: (text) {
                    print('Entered pin is $text');
                  },
                  onChange: (text) {
                    print('Enter on change pin is $text');
                  },
                  onCodeChanged: (code) {
                    print('onCodeChanged  is $code');
                  },
                  otpPinFieldStyle: OtpPinFieldStyle(
                    defaultFieldBackgroundColor: TColor.textfield,
                    activeFieldBackgroundColor: TColor.textfield,
                    defaultFieldBorderColor: Colors.transparent,
                    activeFieldBorderColor: TColor.primary,
                  ),
                  maxLength: 4,
                  cursorColor: Colors.indigo,
                  upperChild: Column(
                    children: [
                      SizedBox(height: 30),
                      Icon(Icons.flutter_dash_outlined, size: 150),
                      SizedBox(height: 20),
                    ],
                  ),
                  cursorWidth: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  otpPinFieldDecoration: OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
              ),
              SizedBox(height: media.height * 0.04),
              RoundButton(text: "Send", onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (content) => NewPasswordView()))),
              SizedBox(height: media.height * 0.01),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive?",
                      style: TextStyle(color: TColor.secondPrimary, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Click Here",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: TColor.primary),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
