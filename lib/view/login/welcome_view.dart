import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/login/login_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/images/welcome_top_shape.png",
                width: media.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/app_logo.png",
                width: media.width * 0.6,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: media.height * 0.05),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
              textAlign: TextAlign.center,
              style: TextStyle(color: TColor.primaryText, fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: media.height * 0.05),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundButton(
              text: "Login",
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView())),
            ),
          ),
          SizedBox(height: media.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundButton(
              text: "Create an Account",
              onPressed: () {},
              type: ButtonType.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
