import 'package:flutter/material.dart';
import 'package:food_delivery_app/common_widget/menu_item_row.dart';
import 'package:food_delivery_app/view/menu/item_detail_view.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_textfield.dart';

class MenuItemsView extends StatefulWidget {
  final Map menuObj;
  const MenuItemsView({super.key, required this.menuObj});

  @override
  State<MenuItemsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtSearch = TextEditingController();

    List menuItemsArr = [
      {"image": "assets/images/dess_1.png", "name": "French Apple Pie", "rate": "4.9", "rating": "123", "type": "Minute by tuk tuk", "food_type": "Desserts"},
      {"image": "assets/images/dess_2.png", "name": "Dark Chocolate Cake", "rate": "4.9", "rating": "123", "type": "Cake by Tella", "food_type": "Desserts"},
      {"image": "assets/images/dess_3.png", "name": "Street Shake", "rate": "4.9", "rating": "123", "type": "Cafe Racer", "food_type": "Desserts"},
      {"image": "assets/images/dess_4.png", "name": "Fudgy Chewy Brownies", "rate": "4.9", "rating": "123", "type": "Minute by tuk tuk", "food_type": "Desserts"},
      {"image": "assets/images/dess_1.png", "name": "French Apple Pie", "rate": "4.9", "rating": "123", "type": "Minute by tuk tuk", "food_type": "Desserts"},
      {"image": "assets/images/dess_2.png", "name": "Dark Chocolate Cake", "rate": "4.9", "rating": "123", "type": "Cake by Tella", "food_type": "Desserts"},
      {"image": "assets/images/dess_3.png", "name": "Street Shake", "rate": "4.9", "rating": "123", "type": "Cafe Racer", "food_type": "Desserts"},
      {"image": "assets/images/dess_4.png", "name": "Fudgy Chewy Brownies", "rate": "4.9", "rating": "123", "type": "Minute by tuk tuk", "food_type": "Desserts"},
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
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/btn_back.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget.menuObj["name"],
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
                SizedBox(height: 20),
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
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: menuItemsArr.length,
                  itemBuilder: ((context, index) {
                    var menuItemsObj = menuItemsArr[index] as Map ?? {};
                    return MenuItemRow(
                        menuObj: menuItemsObj,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetailView()));
                        });
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
