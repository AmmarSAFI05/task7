import 'package:flutter/material.dart';

import '../core/constant/app_colors.dart';
import '../core/constant/app_images.dart';
import '../core/constant/app_sizes.dart';

class SocialAppCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final bool? online;
  const SocialAppCircleAvatar({super.key, required this.imageUrl, this.online=true});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 25,
      backgroundImage: AssetImage(imageUrl),
      backgroundColor: AppColors.orangeColor,
      child: online==true?Align(
          alignment: const Alignment(1, 1),
          child: Image.asset(
            AppImages.greenDot,
            width: AppSize.iconSm(),
          )):null
    );
  }
}
