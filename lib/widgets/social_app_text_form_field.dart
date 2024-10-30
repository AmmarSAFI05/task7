import 'package:flutter/material.dart';

import '../core/constant/app_colors.dart';
import '../core/constant/app_sizes.dart';

class SocialAppTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final bool? hasIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final Icon? suffixIcon;
  const SocialAppTextFormField(
      {super.key,
        required this.controller,
        this.hintText,
        this.validator,
        this.icon,
        this.hasIcon = false,
        this.suffixIcon,
        this.isPassword,
        this.keyboardType});

  @override
  SocialAppTextFormFieldState createState() => SocialAppTextFormFieldState();
}

class SocialAppTextFormFieldState extends State<SocialAppTextFormField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword == true ? isObscure : false,
      decoration: InputDecoration(
        contentPadding:
        EdgeInsets.symmetric(vertical: AppSize.screenHeight * 0.0175, horizontal: AppSize.screenWidth*0.05),
        fillColor: AppColors.fieldColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.borderRadiusSm()*0.75),
            borderSide:
            BorderSide(width: 1, color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.borderRadiusSm()*0.75),
            borderSide:
            BorderSide(width: 1, color: Colors.transparent)),
        hintText: widget.hintText,
        hintStyle: TextStyle(
            height: 2, color: AppColors.greyColor, fontSize: AppSize.fontSizeSm()),
        suffixIcon: widget.isPassword == true
            ? IconButton(
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: AppSize.md() * 1.125),
                child: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.greyColor,
                )))
            : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.borderRadiusSm()*0.75),
            borderSide:
            BorderSide(width: 1, color: Colors.transparent)),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.transparent),
          borderRadius: BorderRadius.circular(AppSize.borderRadiusSm()*0.75),
        ),
        errorStyle: const TextStyle(color: Colors.red),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.borderRadiusLg()*0.75),
            borderSide:
            BorderSide(width: 1, color: Colors.transparent)),
      ),
      style: TextStyle(
          color: AppColors.blueColor,
          height: 2,
          fontSize: AppSize.fontSizeSm() * 1.125),
      cursorErrorColor: Colors.black,
    );
  }
}
