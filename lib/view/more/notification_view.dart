import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<NotificationView> {
  List notificationArr = [
    {"title": "Your orders has been picked up", "time": "Now"},
    {"title": "Your orders has been picked up", "time": "1 hrs ago"},
    {"title": "Your orders has been picked up", "time": "2 hrs ago"},
    {"title": "Your orders has been picked up", "time": "3 hrs ago"},
    {"title": "Your orders has been picked up", "time": "4 hrs ago"},
    {"title": "Your orders has been picked up", "time": "25th Dec 2024"},
    {"title": "Your orders has been picked up", "time": "7th Jan 2025"},
    {"title": "Your orders has been picked up", "time": "14th Feb 2025"},
    {"title": "Your orders has been picked up", "time": "14th Feb 2025"},
    {"title": "Your orders has been picked up", "time": "14th Feb 2025"},
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                        "assets/images/btn_back.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ListView.separated(
                    separatorBuilder: (context, index) => Divider(indent: 25, endIndent: 25, color: Colors.grey.shade300, height: 1),
                    itemCount: notificationArr.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      var notiObj = notificationArr[index] as Map ?? {};
                      return Container(
                        decoration: BoxDecoration(color: index % 2 == 0 ? Colors.white : TColor.textfield),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(color: TColor.primary, borderRadius: BorderRadius.circular(4)),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  notiObj["title"],
                                  style: TextStyle(color: TColor.primaryText, fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  notiObj["time"],
                                  style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
