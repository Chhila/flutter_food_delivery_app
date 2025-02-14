import 'package:flutter/material.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/view/more/add_card_view.dart';

import '../../common/color_extension.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<PaymentDetailsView> {
  List cardArr = [
    {
      "icon": "assets/images/visa_icon.png",
      "card": "**** **** **** 1234",
    }
  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController txtSearch = TextEditingController();

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
                        "Payment Details",
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Customize your payment method",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(color: Colors.grey.withAlpha(50), height: 1),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: TColor.textfield,
                    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 15, offset: Offset(0, 10))],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cash/Card On Delivery",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Image.asset("assets/images/check.png", width: 20, height: 20),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(color: Colors.grey.withAlpha(50), height: 1),
                      ),
                      ListView.builder(
                          itemCount: cardArr.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            var cardObj = cardArr[index] as Map ?? {};
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              child: Row(
                                children: [
                                  Image.asset(
                                    cardObj["icon"].toString(),
                                    width: 50,
                                    height: 25,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      cardObj["card"],
                                      style: TextStyle(color: TColor.primaryText, fontSize: 12, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 110,
                                    height: 35,
                                    child: RoundButton(
                                      text: "Delete Card",
                                      onPressed: () {},
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(color: Colors.grey.withAlpha(50), height: 1),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Other Methods",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundIconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return AddCardView();
                            });
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => AddCardView()));
                      },
                      text: "Add Another Credit/Debit",
                      iconPath: "assets/images/add.png",
                      fontSize: 16,
                      color: TColor.primary),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
