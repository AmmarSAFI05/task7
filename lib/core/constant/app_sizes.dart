import 'package:flutter/material.dart';

class AppSize {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static bool isPortrait = true;

  // Method to initialize on main.dart
  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    // Check if the device is in portrait mode
    isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  }

  // Button Sizes
  static double btnWidth() => isPortrait ? screenWidth : screenWidth;
  static double btnHeight() => isPortrait ? screenWidth * 0.125 : screenHeight * 0.1;

  // Padding and Margin 
  static double sm() => isPortrait ? screenWidth * 0.02 : screenHeight * 0.02;
  static double xsm() => isPortrait ? screenWidth * 0.03 : screenHeight * 0.03;
  static double md() => isPortrait ? screenWidth * 0.04 : screenHeight * 0.04;
  static double xmd() => isPortrait ? screenWidth * 0.05 : screenHeight * 0.05;
  static double lg() => isPortrait ? screenWidth * 0.06 : screenHeight * 0.06;
  static double xl() => isPortrait ? screenWidth * 0.08 : screenHeight * 0.08;
  static double xxl() => isPortrait ? screenWidth * 0.1 : screenHeight * 0.1;

  // Icon Sizes
  static double iconSm() => isPortrait ? screenWidth * 0.04 : screenHeight * 0.04;
  static double iconMd() => isPortrait ? screenWidth * 0.07 : screenHeight * 0.07;
  static double iconLg() => isPortrait ? screenWidth * 0.08 : screenHeight * 0.08;

  // Font Sizes 
  static double fontSizeSm() => isPortrait ? screenWidth * 0.035 : screenHeight * 0.035;
  static double fontSizeMd() => isPortrait ? screenWidth * 0.045 : screenHeight * 0.045;
  static double fontSizeLg() => isPortrait ? screenWidth * 0.055 : screenHeight * 0.055;
  static double fontSizeXlg() => isPortrait ? screenWidth * 0.07 : screenHeight * 0.07;
  static double fontSizexxLg() => isPortrait ? screenWidth * 0.09 : screenHeight * 0.09;
  // Button Styling
  static double buttonRadius() => isPortrait ? screenWidth * 0.03 : screenHeight * 0.03;
  static double buttonElevation() => isPortrait ? screenWidth * 0.01 : screenHeight * 0.01;

  // AppBar Height
  static double appBarHeight() => isPortrait ? screenHeight * 0.12 : screenHeight * 0.2;

  // Image Size
  static double imageSize() => isPortrait ? screenWidth * 0.2 : screenHeight * 0.2;

  // Spacing
  static double defaultSpace() => isPortrait ? screenWidth * 0.05 : screenHeight * 0.05;
  static double spaceBtwItems() => isPortrait ? screenWidth * 0.04 : screenHeight * 0.04;
  static double spaceBtwSections() => isPortrait ? screenWidth * 0.08 : screenHeight * 0.08;

  // Border Radius
  static double borderRadiusSm() => isPortrait ? screenWidth * 0.04 : screenHeight * 0.04;
  static double borderRadiusMd() => isPortrait ? screenWidth * 0.08 : screenHeight * 0.8;
  static double borderRadiusLg() => isPortrait ? screenWidth * 0.1 : screenHeight * 0.1;

  // Input Field
  static double inputFieldRadius() => isPortrait ? screenWidth * 0.03 : screenHeight * 0.03;
  static double spaceBtwInputField() => isPortrait ? screenWidth * 0.04 : screenHeight * 0.04;

  // Grid View Spacing
  static double gridViewSpacing() => isPortrait ? screenWidth * 0.04 : screenHeight * 0.04;
}
