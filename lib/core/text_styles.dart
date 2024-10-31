import 'package:flutter/material.dart';
import 'constant/app_colors.dart';
import 'constant/app_fonts.dart';
import 'constant/app_sizes.dart';

class AppTextStyles {
  static TextStyle greyText = const TextStyle(color: AppColors.greyColor);
  static TextStyle homePageUser = TextStyle(
    fontWeight: AppFontWeight.xbold,
    fontSize: AppSize.fontSizeSm() * 1.1,
  );
  static TextStyle pointsNumber = const TextStyle(
    color: AppColors.greenColor,
    fontWeight: AppFontWeight.bold,
  );
  static TextStyle points = const TextStyle(
    color: AppColors.greenColor,
    fontWeight: AppFontWeight.normal,
  );
  static TextStyle firstRichText = TextStyle(
    color: Colors.black,
    fontSize: AppSize.fontSizeSm() * 1.5,
    fontWeight: AppFontWeight.med,
  );
  static TextStyle secondRichText = TextStyle(
    color: Colors.black,
    fontSize: AppSize.fontSizeSm() * 1.25,
    fontWeight: AppFontWeight.normal,
  );
  static TextStyle tagStyle = TextStyle(
    color: AppColors.bgColor,
    fontSize: AppSize.fontSizeSm() * 0.8,
    fontWeight: AppFontWeight.med,
  );
  static TextStyle freeEBook = TextStyle(
    color: AppColors.bgColor,
    fontSize: AppSize.sm(),
    fontWeight: FontWeight.bold,
  );
  static TextStyle detailsTitle = TextStyle(
    color: Colors.white,
    fontSize: AppSize.lg() *0.8,
    fontWeight: FontWeight.bold,
  );
  static TextStyle detailsTime =  TextStyle(
      color:
      AppColors.lightGreyColor,
      fontSize:
      AppSize.fontSizeSm() *
          0.8);
  static TextStyle detailsUsername =  TextStyle(
    color: AppColors.bgColor,
    fontSize:
    AppSize.fontSizeMd(),
    fontWeight:
    AppFontWeight.med,
  );
  static TextStyle detailsSubUsername =  TextStyle(
    color: AppColors
        .lightGreyColor,
    fontSize:
    AppSize.fontSizeSm() *
        0.75,
  );


}