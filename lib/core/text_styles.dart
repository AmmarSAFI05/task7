import 'package:flutter/material.dart';
import 'constant/app_colors.dart';
import 'constant/app_fonts.dart';
import 'constant/app_sizes.dart';

class AppTextStyles {

  static TextStyle onBoardingTitle = TextStyle(
      fontSize: AppSize.fontSizeSm() * 1.25,
      fontWeight: AppFontWeight.bold,
      color: AppColors.black);

  static TextStyle onBoardingSubTitle = TextStyle(
      fontSize: AppSize.fontSizeSm(),
      fontWeight: AppFontWeight.normal,
      color: AppColors.greyColor);

  static TextStyle buttonText= TextStyle(
      fontSize: AppSize.fontSizeSm(),
      fontWeight: AppFontWeight.med,
      color: AppColors.bgColor);

  static TextStyle messageTitle = TextStyle(
      fontSize: AppSize.fontSizeSm() * 1.25,
      fontWeight: AppFontWeight.bold,
      color: AppColors.black);

  static TextStyle subMessageTitle = TextStyle(
      fontSize: AppSize.fontSizeSm()  ,
      fontWeight: AppFontWeight.normal,
      color: AppColors.lighterGreyColor2);

  static TextStyle newMessage = TextStyle(
      fontSize: AppSize.fontSizeSm()  ,
      fontWeight: AppFontWeight.normal,
      color: AppColors.greyColor);

  static TextStyle messageTime = TextStyle(
      fontSize: AppSize.fontSizeSm()  ,
      fontWeight: AppFontWeight.normal,
      color: AppColors.lighterGreyColor2);

  static TextStyle numberUnreadMessage = TextStyle(
      fontSize: AppSize.fontSizeSm()  ,
      fontWeight: AppFontWeight.med,
      color: AppColors.bgColor);
}