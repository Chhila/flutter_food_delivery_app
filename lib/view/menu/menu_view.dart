import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/menu/menu_items_view.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_textfield.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  TextEditingController txtSearch = TextEditingController();

  List menuArr = [
    {"name": "Foods", "image": "assets/images/menu_1.png", "items_count": "120"},
    {"name": "Beverages", "image": "assets/images/menu_2.png", "items_count": "220"},
    {"name": "Desserts", "image": "assets/images/menu_3.png", "items_count": "155"},
    {"name": "Promotions", "image": "assets/images/menu_4.png", "items_count": "25"},
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: EdgeInsets.only(top: 140),
            width: media.width * 0.25,
            height: media.height * 0.65,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(35)),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Menu",
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
                            ))
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
                  ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: menuArr.length,
                      itemBuilder: (context, index) {
                        var menuObj = menuArr[index] as Map? ?? {};
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MenuItemsView(menuObj: menuObj)));
                          },
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10, right: 20),
                                width: media.width * 0.75,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(15), left: Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black12, blurRadius: 7, offset: Offset(0, 4)),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    menuObj["image"].toString(),
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          menuObj["name"],
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "${menuObj["items_count"].toString()} items",
                                          style: TextStyle(
                                            color: TColor.secondPrimary,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(color: Colors.black12, blurRadius: 7, offset: Offset(0, 4)),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      "assets/images/btn_next.png",
                                      width: 15,
                                      height: 15,
                                    ),
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
        ],
      ),
    );
  }
}
