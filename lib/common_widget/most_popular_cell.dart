import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class MostPopularCell extends StatelessWidget {
  final Map mostPopObj;
  final VoidCallback onTap;
  const MostPopularCell({super.key, required this.mostPopObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                mostPopObj["image"].toString(),
                width: 220,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text(
              mostPopObj["name"],
              style: TextStyle(color: TColor.primaryText, fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  mostPopObj["type"],
                  style: TextStyle(color: TColor.secondPrimary, fontSize: 12, fontWeight: FontWeight.w700),
                ),
                Text(
                  " . ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.primary, fontSize: 12),
                ),
                Text(
                  mostPopObj["food_type"],
                  style: TextStyle(color: TColor.secondPrimary, fontSize: 12, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 5),
                Image.asset(
                  "assets/images/rate.png",
                  width: 10,
                  height: 10,
                ),
                Text(
                  mostPopObj["rate"],
                  style: TextStyle(color: TColor.primary, fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
