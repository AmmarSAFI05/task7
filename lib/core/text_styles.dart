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
  static TextStyle detailsTime =  TextStyle(
      color:
      AppColors.lightGreyColor,
      fontSize:
      AppSize.fontSizeSm() *
          0.8);
  //Nour Schedule Page
  static TextStyle schedulePageStyle = TextStyle(
      color: AppColors.black,
      fontSize: AppSize.fontSizeSm() * 1.1,
      fontFamily: 'Poppins',
      fontWeight: AppFontWeight.xbold,
      height: 0.5
  );

  static TextStyle schedulePageTitleStyle = TextStyle(
    color: AppColors.lightGreyColor,
    fontSize: AppSize.fontSizeSm() * 1.5,
    fontFamily: 'Poppins',
    fontWeight: AppFontWeight.bold,
  );

  static TextStyle scheduleButtonStyle = TextStyle(
    color: AppColors.bgColor,
    fontSize: AppSize.fontSizeSm() * 1.1,
    fontFamily: 'Poppins',
    fontWeight: AppFontWeight.normal,
  );

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