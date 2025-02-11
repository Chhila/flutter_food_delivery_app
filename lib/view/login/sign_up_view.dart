import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/login/otp_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneNumController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
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
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: TColor.primaryText),
              ),
              SizedBox(height: media.height * 0.01),
              Text(
                "Add your details to sign up",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: TColor.secondPrimary),
              ),
              SizedBox(height: media.height * 0.03),
              RoundTextfield(
                controller: emailController,
                hintText: "Your Email",
              ),
              SizedBox(height: media.height * 0.03),
              RoundTextfield(
                controller: emailController,
                hintText: "Email",
                isPassword: true,
              ),
              SizedBox(height: media.height * 0.03),
              RoundTextfield(
                controller: phoneNumController,
                hintText: "Mobile No",
              ),
              SizedBox(height: media.height * 0.03),
              RoundTextfield(
                controller: addressController,
                hintText: "Address",
                isPassword: true,
              ),
              SizedBox(height: media.height * 0.03),
              RoundTextfield(
                controller: passwordController,
                hintText: "Password",
              ),
              SizedBox(height: media.height * 0.03),
              RoundTextfield(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                isPassword: true,
              ),
              SizedBox(height: media.height * 0.03),
              RoundButton(text: "Sign Up", onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => OTPView()))),
              SizedBox(height: media.height * 0.05),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: TColor.secondPrimary, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Login",
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
