import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/view/login/reset_password_view.dart';
import 'package:food_delivery_app/view/login/sign_up_view.dart';
import 'package:food_delivery_app/view/on_boarding/on_boarding_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: TColor.primaryText),
              ),
              SizedBox(height: media.height * 0.01),
              Text(
                "Add your details to login",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: TColor.secondPrimary),
              ),
              SizedBox(height: media.height * 0.04),
              RoundTextfield(
                controller: emailController,
                hintText: "Your Email",
              ),
              SizedBox(height: media.height * 0.04),
              RoundTextfield(
                controller: passwordController,
                hintText: "Password",
                isPassword: true,
              ),
              SizedBox(height: media.height * 0.04),
              RoundButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingView()));
                  }),
              SizedBox(height: media.height * 0.01),
              TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordView())),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: TColor.secondPrimary),
                ),
              ),
              SizedBox(height: media.height * 0.05),
              Text(
                "or Login With",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: TColor.secondPrimary),
              ),
              SizedBox(height: media.height * 0.02),
              RoundIconButton(
                onPressed: () {},
                text: "Login with Facebook",
                iconPath: "assets/images/facebook_logo.png",
                color: Color(0xff367FC0),
              ),
              SizedBox(height: media.height * 0.02),
              RoundIconButton(
                onPressed: () {},
                text: "Login with  Google",
                iconPath: "assets/images/google_logo.png",
                color: Color(0xffDD4839),
              ),
              SizedBox(height: media.height * 0.05),
              TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: TColor.secondPrimary, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Sign Up",
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
