import 'package:flutter/material.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/more/change_address_view.dart';

import '../../common/color_extension.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<CheckoutView> {
  List paymentArr = [
    {"name": "Cash on Delivery", "icon": "assets/images/cash.png"},
    {"name": "**** **** **** 1234", "icon": "assets/images/visa_icon.png"},
    {"name": "test@gmail.com", "icon": "assets/images/paypal.png"},
  ];

  int selectedMethod = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
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
                        "My Order",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "653 Nostrand Ave.\nBrooklyn, NY 11216",
                              style: TextStyle(color: TColor.primaryText, fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(height: 5),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeAddressView()));
                            },
                            child: Text(
                              "Change",
                              style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: paymentArr.length,
                          itemBuilder: (context, index) {
                            var paymentObj = paymentArr[index] as Map? ?? {};
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              decoration: BoxDecoration(color: TColor.textfield, borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.grey.shade500)),
                              child: Row(
                                children: [
                                  Image.asset(
                                    paymentObj["icon"],
                                    width: 50,
                                    height: 20,
                                    fit: BoxFit.contain,
                                  ),
                                  Expanded(
                                    child: Text(
                                      paymentObj["name"].toString(),
                                      style: TextStyle(color: TColor.primaryText, fontSize: 13, fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedMethod = index;
                                      });
                                    },
                                    child: Icon(
                                      selectedMethod == index ? Icons.radio_button_checked_rounded : Icons.radio_button_off_rounded,
                                      color: TColor.primary,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            );
                          })
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: TColor.textfield),
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Method",
                            style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: TColor.primary),
                            label: Text(
                              "Add Card",
                              style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(color: TColor.textfield),
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(color: Colors.grey.shade300, height: 1),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub Total",
                            style: TextStyle(color: TColor.primaryText, fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$68",
                            style: TextStyle(color: TColor.primaryText, fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Cost",
                            style: TextStyle(color: TColor.primaryText, fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "\$2",
                            style: TextStyle(color: TColor.primaryText, fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Discount",
                            style: TextStyle(color: TColor.primaryText, fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "-\$4",
                            style: TextStyle(color: TColor.primaryText, fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey.shade300, height: 1),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(color: TColor.primaryText, fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "\$66",
                            style: TextStyle(color: TColor.primaryText, fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(color: TColor.textfield),
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: RoundButton(text: "Send Order", onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
