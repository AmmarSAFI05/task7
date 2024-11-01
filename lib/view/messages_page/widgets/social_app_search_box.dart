import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';

class SocialAppSearchBox extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;

  const SocialAppSearchBox({
    super.key,
    required this.controller,
    this.hintText,
  });

  @override
  SocialAppSearchBoxState createState() => SocialAppSearchBoxState();
}

class SocialAppSearchBoxState extends State<SocialAppSearchBox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: AppSize.screenHeight * 0.0175,
            horizontal: AppSize.screenWidth * 0.05),
        fillColor: AppColors.fieldColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppSize.borderRadiusSm() * 0.75),
            borderSide: const BorderSide(width: 1, color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppSize.borderRadiusSm() * 0.75),
            borderSide: const BorderSide(width: 1, color: Colors.transparent)),
        hintText: widget.hintText,
        hintStyle: TextStyle(
            height: 2,
            color: AppColors.lighterGreyColor,
            fontSize: AppSize.fontSizeSm() * 1.25),
        suffixIcon: Container(
          width: AppSize.xxl() * 1.25,
          height: AppSize.xxl() * 1.25,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: AppColors.orangeColor,
            borderRadius:
                BorderRadius.circular(AppSize.borderRadiusSm() * 0.50),
          ),
          child: Image.asset(
            AppImages.search,
            width: AppSize.iconMd() * 0.75,
          ),
        ),
        border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppSize.borderRadiusSm() * 0.75),
            borderSide: const BorderSide(width: 1, color: Colors.transparent)),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.transparent),
          borderRadius: BorderRadius.circular(AppSize.borderRadiusSm() * 0.75),
        ),
        errorStyle: const TextStyle(color: Colors.red),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppSize.borderRadiusLg() * 0.75),
            borderSide: const BorderSide(width: 1, color: Colors.transparent)),
      ),
      style: TextStyle(
          color: AppColors.blueColor,
          height: 2,
          fontSize: AppSize.fontSizeSm() * 1.125),
      cursorErrorColor: Colors.black,
    );
  }
}
