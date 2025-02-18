import 'package:flutter/material.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';

import '../../common/color_extension.dart';
import 'checkout_view.dart';

class MyOrderView extends StatefulWidget {
  const MyOrderView({super.key});

  @override
  State<MyOrderView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MyOrderView> {
  List itemsArr = [
    {"name": "Beef Burger", "qty": "1", "price": 16},
    {"name": "Classic Burger", "qty": "1", "price": 14},
    {"name": "Cheese Chicken Burger", "qty": "1", "price": 7},
    {"name": "Chicken Legs Basket", "qty": "1", "price": 15},
    {"name": "French Fried Large", "qty": "1", "price": 6},
  ];

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
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/images/shop_logo.png",
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Burger King",
                            style: TextStyle(color: TColor.primaryText, fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/rate.png",
                                width: 10,
                                height: 10,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "4.9",
                                style: TextStyle(color: TColor.primary, fontSize: 11, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "( 124 Ratings)",
                                style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Burger",
                                style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                " . ",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: TColor.primary, fontSize: 11),
                              ),
                              Text(
                                "Western Food",
                                style: TextStyle(color: TColor.secondPrimary, fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/location-pin.png",
                                width: 10,
                                height: 10,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "No 03, 4th Lane, New York",
                                style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ListView.separated(
                    separatorBuilder: (context, index) => Divider(indent: 25, endIndent: 25, color: Colors.grey.shade300, height: 1),
                    itemCount: itemsArr.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      var itemObj = itemsArr[index] as Map ?? {};
                      return Container(
                        decoration: BoxDecoration(color: TColor.textfield),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${itemObj['name'].toString()} x${itemObj["qty"].toString()}",
                                style: TextStyle(color: TColor.primaryText, fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text(
                              "\$${itemObj["price"].toString()}",
                              style: TextStyle(color: TColor.primaryText, fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    }),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Instruction",
                            style: TextStyle(color: TColor.primaryText, fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: TColor.primary),
                            label: Text(
                              "Add Notes",
                              style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey.shade300, height: 1),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub Total",
                            style: TextStyle(color: TColor.primaryText, fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "\$68",
                            style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w700),
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
                            style: TextStyle(color: TColor.primary, fontSize: 13, fontWeight: FontWeight.w700),
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
                            style: TextStyle(color: TColor.primaryText, fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "\$70",
                            style: TextStyle(color: TColor.primary, fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      RoundButton(
                          text: "Checkout",
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutView()));
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
