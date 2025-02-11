import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/main_tab/main_tab_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectedPage = 0;
  PageController pageController = PageController();

  List pageArr = [
    {
      "title": "Find food you love",
      "subtitle": "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
      "image": "assets/images/on_boarding_1.png",
    },
    {
      "title": "Fast Delivery",
      "subtitle": "Fast food delivery to your home, office\n where you are",
      "image": "assets/images/on_boarding_2.png",
    },
    {
      "title": "Live Tracking",
      "subtitle": "Real time tracking of your food on the app\nonce your placed your order",
      "image": "assets/images/on_boarding_3.png",
    }
  ];

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      selectedPage = pageController.page?.round() ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                selectedPage = value;
              });
            },
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pObj["image"].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: media.width * 0.1),
                  Text(
                    pObj["title"].toString(),
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: media.width * 0.07),
                  Text(
                    pObj["subtitle"].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: media.width * 0.2),
                ],
              );
            },
          ),
          Column(
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: pageArr.map((e) {
                  var index = pageArr.indexOf(e) ?? 0;
                  return Container(
                    height: 8,
                    width: 8,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(color: index == selectedPage ? TColor.primary : TColor.placeholder, borderRadius: BorderRadius.circular(4)),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  text: "Next",
                  onPressed: () {
                    if (selectedPage >= 2) {
                      // Home Screen
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainTabView()));
                    } else {
                      // Next Screen

                      setState(() {
                        selectedPage += 1;
                        pageController.animateToPage(selectedPage, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                      });
                    }
                  },
                ),
              ),
              SizedBox(height: media.width * 0.2),
            ],
          )
        ],
      ),
    );
  }
}
