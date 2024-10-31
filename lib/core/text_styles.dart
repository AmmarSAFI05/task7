import 'package:flutter/material.dart';
import 'constant/app_colors.dart';
import 'constant/app_fonts.dart';
import 'constant/app_sizes.dart';

class AppTextStyles {

  static TextStyle onBoardingTitle = TextStyle(
      fontSize: AppSize.fontSizeSm() * 1.5,
      fontWeight: AppFontWeight.bold,
      color: AppColors.black);
  static TextStyle onBoardingSubTitle = TextStyle(

    fontSize: AppSize.fontSizeSm(),
    fontWeight: AppFontWeight.normal,
    color: AppColors.greyColor,
  );
  static TextStyle buttonText= TextStyle(
      fontSize: AppSize.fontSizeSm(),
      fontWeight: AppFontWeight.med,
      color: AppColors.bgColor);

  static TextStyle forgotpassword= TextStyle(
      fontSize: AppSize.fontSizeSm()*1.25,
      fontWeight: AppFontWeight.xMed,
      color: AppColors.blueColor);


  static TextStyle loginwithfacebook= TextStyle(
      fontSize: AppSize.fontSizeSm()*1.25,
      fontWeight: AppFontWeight.med,
      color: AppColors.bgColor);


  static TextStyle loginwithgoogle= TextStyle(
      fontSize: AppSize.fontSizeSm()*1.25,
      fontWeight: AppFontWeight.med,

      color: AppColors.black);


  static TextStyle dont_have_account= TextStyle(
      fontSize: AppSize.fontSizeSm(),
      fontWeight: AppFontWeight.normal,
      color: AppColors.lightGreyColor
  );

  static TextStyle sign_up= TextStyle(
      fontSize: AppSize.fontSizeSm(),
      fontWeight: AppFontWeight.normal,
      color: AppColors.blueColor);




}

