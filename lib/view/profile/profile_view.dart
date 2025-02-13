import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_textfield.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/color_extension.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/shopping_cart.png",
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: TColor.placeholder, borderRadius: BorderRadius.circular(50)),
                  child: image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            File(image!.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 65,
                          color: TColor.primaryText,
                        ),
                ),
                TextButton.icon(
                  onPressed: () async {
                    image = await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {});
                  },
                  label: Text(
                    "Edit Profile",
                    style: TextStyle(color: TColor.primary, fontSize: 12),
                  ),
                  icon: Icon(
                    Icons.edit,
                    color: TColor.primary,
                    size: 12,
                  ),
                ),
                Text(
                  "Hi there Chhila!",
                  style: TextStyle(color: TColor.primaryText, fontSize: 16, fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign out",
                    style: TextStyle(color: TColor.primary, fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: RoundTitleTextfield(
                    hintText: "Enter name",
                    title: "Name",
                    controller: txtName,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: RoundTitleTextfield(
                    hintText: "Enter email",
                    title: "Email",
                    keyboardType: TextInputType.emailAddress,
                    controller: txtEmail,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: RoundTitleTextfield(
                    hintText: "Enter Mobile No",
                    title: "Mobile No",
                    controller: txtMobile,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: RoundTitleTextfield(
                    hintText: "Enter Address",
                    title: "Address",
                    controller: txtAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: RoundTitleTextfield(
                    hintText: "* * * *",
                    title: "Password",
                    controller: txtPassword,
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: RoundTitleTextfield(
                    hintText: "* * * *",
                    title: "Confirm Password",
                    controller: txtConfirmPassword,
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundButton(text: "Save", onPressed: () {}),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
