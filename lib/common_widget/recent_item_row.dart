import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class RecentItemRow extends StatelessWidget {
  final Map recentObj;
  final VoidCallback onTap;
  const RecentItemRow({super.key, required this.recentObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                recentObj["image"].toString(),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recentObj["name"],
                    style: TextStyle(color: TColor.primaryText, fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        recentObj["type"],
                        style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " . ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: TColor.primary, fontSize: 11),
                      ),
                      Text(
                        recentObj["food_type"],
                        style: TextStyle(color: TColor.secondPrimary, fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 5),
                    ],
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
                      Text(
                        recentObj["rate"],
                        style: TextStyle(color: TColor.primary, fontSize: 11, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "(${recentObj["rating"]} Rating)",
                        style: TextStyle(color: TColor.secondPrimary, fontSize: 11, fontWeight: FontWeight.w700),
                      ),
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
