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
                    style: AppTextStyles.newMessage,
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: AppSize.lg(),
            height:AppSize.lg(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.notification),
              ),
            ),
            child: Align(
              alignment: const Alignment(1, -1),
              child: Image.asset(
                AppImages.greenDot,
                width: AppSize.iconSm() * 0.50,
                color: AppColors.orangeColor,
              ),
            ),
          ),
        ),
      ],
    );

  }
}
