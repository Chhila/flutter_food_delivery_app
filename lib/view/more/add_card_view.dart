import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMonth = TextEditingController();
  TextEditingController txtCardYear = TextEditingController();
  TextEditingController txtCardCode = TextEditingController();
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();

  bool isAnyTime = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: media.width,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Credit/Debit Card",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: TColor.primaryText,
                    size: 25,
                  ),
                )
              ],
            ),
            Divider(color: Colors.grey.shade300),
            SizedBox(height: 15),
            RoundTextfield(
              hintText: "Card Number",
              controller: txtCardNumber,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Expiry",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: media.width * 0.3,
                  child: RoundTextfield(
                    hintText: "MM",
                    controller: txtCardMonth,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: media.width * 0.3,
                  child: RoundTextfield(
                    hintText: "YYYY",
                    controller: txtCardYear,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            RoundTextfield(
              hintText: "Card Security Code",
              controller: txtCardCode,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),
            RoundTextfield(
              hintText: "First Name",
              controller: txtFirstName,
            ),
            SizedBox(height: 15),
            RoundTextfield(
              hintText: "Last Name",
              controller: txtLastName,
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "You can remove this card at any time",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Switch(
                  activeColor: TColor.primary,
                  value: isAnyTime,
                  onChanged: (value) {
                    setState(() {
                      isAnyTime = value;
                    });
                  },
                )
              ],
            ),
            RoundIconButton(
              onPressed: () {},
              text: "Add Card",
              iconPath: "assets/images/add.png",
              color: TColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
      ),
    );
  }
}
