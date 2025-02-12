import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';

import '../../common/color_extension.dart';

class ItemDetailView extends StatefulWidget {
  const ItemDetailView({super.key});

  @override
  State<ItemDetailView> createState() => _ItemDetailViewState();
}

class _ItemDetailViewState extends State<ItemDetailView> {
  var price = 15;
  int qty = 1;

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/detail_top.png",
            width: media.width,
            height: media.width,
            fit: BoxFit.cover,
          ),
          Container(
            width: media.width,
            height: media.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(height: media.width - 60),
                      Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Tandoori Chicken Pizza",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      IgnorePointer(
                                        ignoring: true,
                                        child: RatingBar.builder(
                                          itemCount: 5,
                                          initialRating: 4,
                                          minRating: 1,
                                          itemSize: 20,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemPadding: EdgeInsets.symmetric(horizontal: 2),
                                          glow: false,
                                          itemBuilder: (context, index) {
                                            return Icon(
                                              Icons.star,
                                              color: TColor.primary,
                                            );
                                          },
                                          onRatingUpdate: (rating) {
                                            log(rating.toString());
                                          },
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "4 Star Rating",
                                        style: TextStyle(color: TColor.primary, fontSize: 11, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$${price.toStringAsFixed(2)}",
                                        style: TextStyle(color: TColor.primaryText, fontSize: 31, fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "/per Person",
                                        style: TextStyle(color: TColor.primaryText, fontSize: 11, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                style: TextStyle(
                                  color: TColor.secondPrimary,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Customize your Order",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                decoration: BoxDecoration(color: TColor.textfield, borderRadius: BorderRadius.circular(10)),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    items: ["small", "big"].map((e) {
                                      return DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: TextStyle(color: TColor.primaryText, fontSize: 14),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {},
                                    dropdownColor: Colors.white,
                                    hint: Text(
                                      "- Select the size of portion -",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: TColor.secondPrimary,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                decoration: BoxDecoration(color: TColor.textfield, borderRadius: BorderRadius.circular(10)),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    items: ["small", "big"].map((e) {
                                      return DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: TextStyle(color: TColor.primaryText, fontSize: 14),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {},
                                    dropdownColor: Colors.white,
                                    hint: Text(
                                      "- Select the ingredients -",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: TColor.secondPrimary,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Number of Portions",
                                    style: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (qty > 1) {
                                          qty -= 1;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(color: TColor.primary, borderRadius: BorderRadius.circular(12.5)),
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    height: 25,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.5), border: Border.all(width: 1, color: TColor.primary)),
                                    child: Text(
                                      qty.toString(),
                                      style: TextStyle(
                                        color: TColor.primary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        qty += 1;
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(color: TColor.primary, borderRadius: BorderRadius.circular(12.5)),
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Container(
                                  width: media.width * 0.25,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: TColor.primary,
                                    borderRadius: BorderRadius.horizontal(right: Radius.circular(35)),
                                  ),
                                ),
                                Center(
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 25),
                                        width: media.width - 100,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.horizontal(right: Radius.circular(15), left: Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(color: Colors.black12, blurRadius: 12, offset: Offset(0, 4)),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Total Price",
                                              style: TextStyle(
                                                color: TColor.primaryText,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "\$${(qty * price).toString()}",
                                              style: TextStyle(
                                                color: TColor.primaryText,
                                                fontSize: 21,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            SizedBox(
                                              width: 130,
                                              height: 30,
                                              child: RoundIconButton(onPressed: () {}, text: "Add to Cart", iconPath: "assets/images/shopping_add.png", color: TColor.primary),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 45,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(22.5),
                                          boxShadow: [
                                            BoxShadow(color: Colors.black12, blurRadius: 12, offset: Offset(0, 4)),
                                          ],
                                        ),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "assets/images/shopping_cart.png",
                                          width: 20,
                                          height: 20,
                                          color: TColor.primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: media.width - 20,
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFav = !isFav;
                          log(isFav.toString());
                        });
                      },
                      child: Image.asset(
                        isFav ? "assets/images/favorites_btn.png" : "assets/images/favorites_btn_2.png",
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                SizedBox(height: 35),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/images/btn_back.png",
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/shopping_cart.png",
                          width: 25,
                          height: 25,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
