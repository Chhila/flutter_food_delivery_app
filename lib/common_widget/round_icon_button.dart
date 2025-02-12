import 'package:flutter/material.dart';

class RoundIconButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final String iconPath;
  final Color? color;
  const RoundIconButton({super.key, required this.onPressed, required this.text, required this.iconPath, required this.color});

  @override
  State<RoundIconButton> createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onPressed,
      enableFeedback: false,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: media.height * 0.07,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.iconPath,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 10),
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
