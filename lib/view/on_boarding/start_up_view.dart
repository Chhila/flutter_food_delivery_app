import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login/welcome_view.dart';

class StartUpView extends StatefulWidget {
  const StartUpView({super.key});

  @override
  State<StartUpView> createState() => _StartUpViewState();
}

class _StartUpViewState extends State<StartUpView> {
  @override
  void initState() {
    redirectToWelcomePage();
    super.initState();
  }

  void redirectToWelcomePage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return const WelcomeView();
    }));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/splash_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/app_logo.png",
            width: media.width * 0.6,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
