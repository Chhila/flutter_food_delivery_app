import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool isSelected;
  final String iconPath;

  const TabButton({super.key, required this.onTap, required this.title, required this.isSelected, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconPath,
            width: 15,
            height: 15,
            color: isSelected ? TColor.primary : TColor.placeholder,
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? TColor.primary : TColor.placeholder,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
