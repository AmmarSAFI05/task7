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

  //Nour Schedule Page
  static TextStyle SchedulePageStyle = TextStyle(
      color: AppColors.black,
      fontSize: AppSize.fontSizeSm() * 1.1,
      fontFamily: 'Poppins',
      fontWeight: AppFontWeight.xbold,
      height: 0.5
  );

  static TextStyle SchedulePageTitleStyle = TextStyle(
    color: AppColors.lightGreyColor,
    fontSize: AppSize.fontSizeSm() * 1.5,
    fontFamily: 'Poppins',
    fontWeight: AppFontWeight.bold,
  );

  static TextStyle ScheduleButtonStyle = TextStyle(
    color: AppColors.bgColor,
    fontSize: AppSize.fontSizeSm() * 1.1,
    fontFamily: 'Poppins',
    fontWeight: AppFontWeight.normal,
  );

}