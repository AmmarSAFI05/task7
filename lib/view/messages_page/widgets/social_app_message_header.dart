import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/text_styles.dart';
import '../../../widgets/social_app_circle_avatar.dart';

class SocialAppMessageHeader extends StatelessWidget {
  const SocialAppMessageHeader({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              const Align(
                alignment: Alignment.centerRight,
                child: SocialAppCircleAvatar(imageUrl: AppImages.profile7),
              ),
              SizedBox(width: AppSize.md()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.myMessages,
                    style: AppTextStyles.messageTitle,
                  ),
                  const SizedBox(),
                  Text(
                    AppText.newMessages,
                    style: AppTextStyles.subMessageTitle,
                  ),
                ],
              ),
            ],
          ),
        ),
       Stack(children: [
         Image.asset(
           AppImages.notification,
           width: AppSize.lg() * 0.75,
         ),
         Positioned(
           right: 0,
           child: Image.asset(
             AppImages.greenDot,
             width: 7.5,
             color: AppColors.orangeColor,
           ),
         ),
       ],)
      ],
    );

  }
}
