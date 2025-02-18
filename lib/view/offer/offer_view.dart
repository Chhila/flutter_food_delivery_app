import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/popular_restaurant_row.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';

import '../more/my_order_view.dart';

class OfferView extends StatefulWidget {
  const OfferView({super.key});

  @override
  State<OfferView> createState() => _HomeViewState();
}

class _HomeViewState extends State<OfferView> {
  TextEditingController txtSearch = TextEditingController();

  List offerArr = [
    {"image": "assets/images/offer_1.png", "name": "Cafe de Noir", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
    {"image": "assets/images/offer_2.png", "name": "Isso", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
    {"image": "assets/images/offer_3.png", "name": "Cafe Beans  ", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
    {"image": "assets/images/offer_3.png", "name": "Cafe Beans  ", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
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
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest Offers",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrderView()));
                          },
                          icon: Image.asset(
                            "assets/images/shopping_cart.png",
                            width: 25,
                            height: 25,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find discounts, Offers special\nmeals and more!",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 140,
                    height: 30,
                    child: RoundButton(text: "Check Offers", fontSize: 12, onPressed: () {}),
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: offerArr.length,
                  itemBuilder: ((context, index) {
                    var popResObj = offerArr[index] as Map ?? {};
                    return PopularRestaurantRow(popResObj: popResObj, onTap: () {});
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
