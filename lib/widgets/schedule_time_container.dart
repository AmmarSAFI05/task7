import 'package:flutter/material.dart';
import '../core/constant/app_fonts.dart';
import '../core/constant/app_sizes.dart';

class CustomContainer extends StatelessWidget {
  final Color containerColor;
  final Color borderColor;
  final Color textColor;
  final String text;
  final bool hasShadow;
  final BoxShadow? customShadow;
  const CustomContainer({
    super.key,
    required this.containerColor,
    required this.borderColor,
    required this.textColor,
    required this.text,
    this.hasShadow = false,
    this.customShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 0.24 * AppSize.screenWidth,
        minHeight: 0.05 * AppSize.screenHeight,
      ),
      width: 0.24 * AppSize.screenWidth,
      height: 0.05 * AppSize.screenHeight,
      decoration: BoxDecoration(
        color: containerColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(AppSize.borderRadiusSm()*0.7),
        boxShadow: hasShadow
            ? [
          customShadow ??
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 4,
                offset: const Offset(2, 2),
                spreadRadius: 1,
              ),
        ]
            : [],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: AppSize.fontSizeSm()*1.1,
            fontFamily: 'Poppins',
            fontWeight: AppFontWeight.xMed,
          ),
        ),
      ),
    );
  }
}
