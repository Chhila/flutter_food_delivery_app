import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/tab_button.dart';
import 'package:food_delivery_app/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectedTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selectedTab != 2) {
              selectedTab = 2;
              selectPageView = HomeView();
            } else {}
            if (mounted) {
              setState(() {});
            }
          },
          shape: CircleBorder(),
          backgroundColor: selectedTab == 2 ? TColor.primary : TColor.placeholder,
          child: Image.asset(
            "assets/images/tab_home.png",
            width: 30,
            height: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        color: Colors.white,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabButton(
              onTap: () {
                if (selectedTab != 0) {
                  selectedTab = 0;
                  selectPageView = HomeView();
                } else {}
                if (mounted) {
                  setState(() {});
                }
              },
              title: "Menu",
              isSelected: selectedTab == 0,
              iconPath: 'assets/images/tab_menu.png',
            ),
            TabButton(
              onTap: () {
                if (selectedTab != 1) {
                  selectedTab = 1;
                  selectPageView = HomeView();
                } else {}
                if (mounted) {
                  setState(() {});
                }
              },
              title: "Offer",
              isSelected: selectedTab == 1,
              iconPath: 'assets/images/tab_offer.png',
            ),
            SizedBox(width: 40, height: 40),
            TabButton(
              onTap: () {
                if (selectedTab != 3) {
                  selectedTab = 3;
                  selectPageView = HomeView();
                } else {}
                if (mounted) {
                  setState(() {});
                }
              },
              title: "Profile",
              isSelected: selectedTab == 3,
              iconPath: 'assets/images/tab_profile.png',
            ),
            TabButton(
              onTap: () {
                if (selectedTab != 4) {
                  selectedTab = 4;
                  selectPageView = HomeView();
                } else {}
                if (mounted) {
                  setState(() {});
                }
              },
              title: "More",
              isSelected: selectedTab == 4,
              iconPath: 'assets/images/tab_more.png',
            ),
          ],
        ),
      ),
    );
  }
}
