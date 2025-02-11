import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map popResObj;
  final VoidCallback onTap;
  const PopularRestaurantRow({super.key, required this.popResObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              popResObj["image"].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    popResObj["name"],
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
                        popResObj["rate"],
                        style: TextStyle(color: TColor.primary, fontSize: 11, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "(${popResObj["rating"]} Rating)",
                        style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 5),
                      Text(
                        popResObj["type"],
                        style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " . ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: TColor.primary, fontSize: 11),
                      ),
                      Text(
                        popResObj["food_type"],
                        style: TextStyle(color: TColor.secondPrimary, fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
