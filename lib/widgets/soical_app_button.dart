import 'package:flutter/material.dart';
import '../core/constant/app_colors.dart';
import '../core/constant/app_fonts.dart';
import '../core/constant/app_sizes.dart';

class SocialAppButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Widget? child;
  final Color? textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;

  const SocialAppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor=AppColors.orangeColor,
    this.borderRadius, this.child, this.textColor,
  });

  @override
  State<SocialAppButton> createState() => _SocialAppButtonState();
}

class _SocialAppButtonState extends State<SocialAppButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? AppSize.screenHeight * 0.07,
      width: widget.width ?? AppSize.screenWidth * 0.9,
      child: ElevatedButton(

          onPressed: widget.onPressed,
          style: ButtonStyle(
            textStyle: WidgetStateProperty.all<TextStyle>(
              TextStyle(
                fontSize: AppSize.fontSizeSm()*1.25,
                fontWeight: AppFontWeight.med,
              ),
            ),
            elevation: WidgetStateProperty.all<double>(5),
            backgroundColor: WidgetStateProperty.all<Color>(widget.backgroundColor),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: widget.borderRadius ??
                    BorderRadius.circular(AppSize.borderRadiusSm()*0.75),
              ),
            ),
          ),
          child: widget.child?? Text(
              widget.text,
              style: TextStyle(
                color: widget.textColor??AppColors.black,))
      ),
    );
  }
}
