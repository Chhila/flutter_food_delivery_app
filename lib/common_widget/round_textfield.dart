import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final Color? bgColor;
  final Widget? left;
  const RoundTextfield({
    super.key,
    this.controller,
    required this.hintText,
    this.isPassword,
    this.keyboardType,
    this.bgColor,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: TColor.textfield, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        autocorrect: false,
        controller: controller,
        obscureText: isPassword ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: left,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: TColor.placeholder, fontWeight: FontWeight.w500),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
      ),
    );
  }
}

class RoundTitleTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String title;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Color? bgColor;
  final Widget? left;
  RoundTitleTextfield({
    super.key,
    required this.hintText,
    this.obscureText,
    this.keyboardType,
    this.bgColor,
    this.left,
    required this.title,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: TColor.textfield, borderRadius: BorderRadius.circular(30)),
          child: TextField(
            autocorrect: false,
            controller: controller,
            obscureText: obscureText ?? false,
            keyboardType: keyboardType ?? TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: left,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: TColor.placeholder, fontWeight: FontWeight.w500),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 5, left: 30),
          child: Text(
            title,
            style: TextStyle(
              color: TColor.placeholder,
              fontSize: 11,
            ),
          ),
        )
      ],
    );
  }
}
