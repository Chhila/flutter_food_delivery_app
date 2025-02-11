import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class CategoryCell extends StatelessWidget {
  final Map catObj;
  final VoidCallback onTap;
  const CategoryCell({super.key, required this.catObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                catObj["image"],
                width: 85,
                height: 85,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              catObj["name"],
              style: TextStyle(color: TColor.primaryText, fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
