import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/category_cell.dart';
import 'package:food_delivery_app/common_widget/most_popular_cell.dart';
import 'package:food_delivery_app/common_widget/popular_restaurant_row.dart';
import 'package:food_delivery_app/common_widget/recent_item_row.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:food_delivery_app/common_widget/view_all_title_row.dart';

import '../more/my_order_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List catArr = [
    {"image": "assets/images/cat_offer.png", "name": "Offers"},
    {"image": "assets/images/cat_sri.png", "name": "Sri Lankan"},
    {"image": "assets/images/cat_3.png", "name": "Italian"},
    {"image": "assets/images/cat_4.png", "name": "Indian"},
  ];
  List popArr = [
    {"image": "assets/images/res_1.png", "name": "Minute by tuk tuk", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
    {"image": "assets/images/res_2.png", "name": "Cafe de Noir", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
    {"image": "assets/images/res_3.png", "name": "Bake by Tella", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
  ];
  List mostPopArr = [
    {"image": "assets/images/m_res_1.png", "name": "Minute by tuk tuk", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
    {"image": "assets/images/m_res_2.png", "name": "Cafe de Noir", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
  ];
  List recentArr = [
    {"image": "assets/images/item_1.png", "name": "Mulberry by Josh", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
    {"image": "assets/images/item_2.png", "name": "Barita", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
    {"image": "assets/images/item_3.png", "name": "Pizza Rush Hour", "rate": "4.9", "rating": "123", "type": "Cafe", "food_type": "Western Food"},
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
              children: [
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Good Morning",
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
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivering to",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Current Location",
                            style: TextStyle(
                              color: TColor.secondPrimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/dropdown.png",
                              width: 12,
                              height: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextfield(
                    controller: txtSearch,
                    hintText: "Search Food",
                    left: Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: Image.asset(
                        "assets/images/search.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    itemCount: catArr.length,
                    itemBuilder: ((context, index) {
                      var catObj = catArr[index] as Map ?? {};
                      return CategoryCell(catObj: catObj, onTap: () {});
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ViewAllTitleRow(
                    title: "Popular Restaurants",
                    onView: () {},
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: popArr.length,
                  itemBuilder: ((context, index) {
                    var popResObj = popArr[index] as Map ?? {};
                    return PopularRestaurantRow(popResObj: popResObj, onTap: () {});
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ViewAllTitleRow(
                    title: "Most popular",
                    onView: () {},
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    itemCount: mostPopArr.length,
                    itemBuilder: ((context, index) {
                      var mostPopObj = mostPopArr[index] as Map ?? {};
                      return MostPopularCell(mostPopObj: mostPopObj, onTap: () {});
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ViewAllTitleRow(
                    title: "Recent Items",
                    onView: () {},
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: recentArr.length,
                  itemBuilder: ((context, index) {
                    var recentObj = recentArr[index] as Map ?? {};
                    return RecentItemRow(recentObj: recentObj, onTap: () {});
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
