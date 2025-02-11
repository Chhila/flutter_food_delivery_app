import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/login/otp_view.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<NewPasswordView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmNewPasswordController = TextEditingController();
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
                "New Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: TColor.primaryText),
              ),
              SizedBox(height: media.height * 0.01),
              Text(
                textAlign: TextAlign.center,
                "Please enter your new password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: TColor.secondPrimary),
              ),
              SizedBox(height: media.height * 0.04),
              RoundTextfield(
                controller: newPasswordController,
                hintText: "New Password",
              ),
              SizedBox(height: media.height * 0.04),
              RoundTextfield(
                controller: confirmNewPasswordController,
                hintText: "Confirm Password",
              ),
              SizedBox(height: media.height * 0.04),
              RoundButton(text: "Next", onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => OTPView()))),
            ],
          ),
        ),
      ),
    );
  }
}
