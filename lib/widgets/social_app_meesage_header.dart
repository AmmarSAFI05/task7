import 'package:flutter/material.dart';
import '../core/constant/app_images.dart';
import '../core/constant/app_sizes.dart';
import '../core/constant/app_text.dart';
import '../core/text_styles.dart';
import '../widgets/social_app_circle_avatar.dart';

class SocialAppMeesageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SocialAppCircleAvatar(imageUrl: AppImages.profile7),
              ),
              SizedBox(width: AppSize.md()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.myMessages,
                    style: AppTextStyles.MyMessageTitle,
                  ),
                  SizedBox(),
                  Text(
                    AppText.newMessages,
                    style: AppTextStyles.NewMessage,
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.notification),
              ),
            ),
            child: Align(
              alignment: const Alignment(1, -1),
              child: Image.asset(
                AppImages.orangeDot,
                width: AppSize.iconSm() * 0.50,
              ),
            ),
          ),
        ),
      ],
    );

  }
}
