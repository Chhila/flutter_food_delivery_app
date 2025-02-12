import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

enum ButtonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonType type;
  final double fontSize;
  const RoundButton({super.key, required this.text, required this.onPressed, this.type = ButtonType.bgPrimary, this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      enableFeedback: false,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: media.height * 0.07,
        decoration: BoxDecoration(
          color: type == ButtonType.bgPrimary ? TColor.primary : Colors.white,
          border: type == ButtonType.bgPrimary ? null : Border.all(color: TColor.primary),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: type == ButtonType.bgPrimary ? Colors.white : TColor.primary,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
