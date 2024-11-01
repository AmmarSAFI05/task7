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

  static TextStyle buttonText = TextStyle(
      fontSize: AppSize.fontSizeSm(),
      fontWeight: AppFontWeight.med,
      color: AppColors.bgColor);

  static TextStyle detailsAppBar = TextStyle(
    fontSize: AppSize.fontSizeMd(),
    fontWeight: AppFontWeight.bold,
    color: AppColors.black,
  ); //added by judy

  static TextStyle detailsTitle = TextStyle(
    fontSize: AppSize.fontSizeXlg(),
    fontWeight: AppFontWeight.bold,
    color: AppColors.black,
  ); //added by judy
  static TextStyle detailsSubTitle = TextStyle(
    fontSize: AppSize.fontSizeSm(),
    color: AppColors.lightGreyColor,
    fontWeight: AppFontWeight.normal,
  ); //added by judy
  static TextStyle detailsUsername = TextStyle(
    fontSize: AppSize.fontSizeMd(),
    fontWeight: AppFontWeight.bold,
    color: AppColors.black,
  ); //added by judy
  static TextStyle detailsSubUsername = TextStyle(
    fontWeight: AppFontWeight.med,
    fontSize: AppSize.fontSizeSm(),
    color: AppColors.lightGreyColor,
  ); //added by judy
  static TextStyle hour = TextStyle(
    fontSize: AppSize.fontSizeSm(),
    color: AppColors.greyColor,
  ); //added by judy
}
