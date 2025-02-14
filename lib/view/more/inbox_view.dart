import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class InboxView extends StatefulWidget {
  const InboxView({super.key});

  @override
  State<InboxView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<InboxView> {
  List inboxArr = [
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
    {"title": "Meal Monkey Promotions", "detail": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."},
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
                        "Inbox",
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
                    itemCount: inboxArr.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      var inboxObj = inboxArr[index] as Map ?? {};
                      return Container(
                        decoration: BoxDecoration(color: index % 4 != 1 ? Colors.white : TColor.textfield),
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    inboxObj["title"].toString(),
                                    style: TextStyle(color: TColor.primaryText, fontSize: 14, fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    inboxObj["detail"].toString(),
                                    style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600),
                                    maxLines: 2,
                                  ),
                                ],
                              ),
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
