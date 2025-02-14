import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/more/about_us_view.dart';
import 'package:food_delivery_app/view/more/inbox_view.dart';
import 'package:food_delivery_app/view/more/notification_view.dart';
import 'package:food_delivery_app/view/more/payment_details_view.dart';

import '../../common/color_extension.dart';

class MoreView extends StatefulWidget {
  const MoreView({super.key});

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  List moreArr = [
    {
      "index": "1",
      "name": "Payment Details",
      "image": "assets/images/more_payment.png",
      "base": 21,
    },
    {
      "index": "2",
      "name": "My Orders",
      "image": "assets/images/more_my_order.png",
      "base": 22,
    },
    {
      "index": "3",
      "name": "Notifications",
      "image": "assets/images/more_notification.png",
      "base": 23,
    },
    {
      "index": "4",
      "name": "Inbox",
      "image": "assets/images/more_inbox.png",
      "base": 24,
    },
    {
      "index": "5",
      "name": "About Us",
      "image": "assets/images/more_info.png",
      "base": 25,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "More",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
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
                ),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: moreArr.length,
                  itemBuilder: (context, index) {
                    var moreObj = moreArr[index] as Map ?? {};
                    var countBase = moreObj['base'] as int? ?? 0;
                    return InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        switch (moreObj["index"].toString()) {
                          case "1":
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentDetailsView()));
                            break;
                          case "3":
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationView()));
                            break;
                          case "4":
                            Navigator.push(context, MaterialPageRoute(builder: (context) => InboxView()));
                            break;
                          case "5":
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsView()));
                            break;
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(color: TColor.textfield, borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(color: TColor.placeholder, borderRadius: BorderRadius.circular(25)),
                                    child: Image.asset(
                                      moreObj["image"].toString(),
                                      width: 35,
                                      height: 35,
                                      color: TColor.primaryText,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      moreObj['name'].toString(),
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  if (countBase > 0)
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(100)),
                                      child: Text(
                                        countBase.toString(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(color: TColor.textfield, borderRadius: BorderRadius.circular(25)),
                              child: Image.asset(
                                "assets/images/btn_next.png",
                                width: 10,
                                height: 10,
                                color: TColor.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
