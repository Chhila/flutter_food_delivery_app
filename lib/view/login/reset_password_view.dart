import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/login/new_password_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
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
                "Reset Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: TColor.primaryText),
              ),
              SizedBox(height: media.height * 0.01),
              Text(
                textAlign: TextAlign.center,
                "Please enter your email to receive a \nlink to create a new password via email",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: TColor.secondPrimary),
              ),
              SizedBox(height: media.height * 0.04),
              RoundTextfield(
                controller: emailController,
                hintText: "Email",
              ),
              SizedBox(height: media.height * 0.04),
              RoundButton(text: "Send", onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (content) => NewPasswordView()))),
            ],
          ),
        ),
      ),
    );
  }
}
