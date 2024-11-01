import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/text_styles.dart';
import '../../../widgets/social_app_circle_avatar.dart';

class SocialAppMessageCard extends StatelessWidget {
  final String? profileImage;
  final String? username;
  final String? userMessage;
  final String? timeMessage;
  final int? numberUnreadMessage;
  final bool? hasUnreadMessage;
  final bool? online;

  const SocialAppMessageCard({
    super.key,
    this.profileImage,
    this.username,
    this.userMessage,
    this.timeMessage,
    this.online,
    this.numberUnreadMessage, this.hasUnreadMessage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.xxl() * 2.3,
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SocialAppCircleAvatar(
                      imageUrl: profileImage!, online: online),
                  SizedBox(width: AppSize.md()),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          username!,
                          style: AppTextStyles.messageTitle,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        SizedBox(height: AppSize.xsm() * 0.50),
                        Text(
                          userMessage!,
                          style:hasUnreadMessage==true?AppTextStyles.newUnreadMessage:AppTextStyles.newMessage,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        timeMessage!,
                        style: AppTextStyles.messageTime,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(width: AppSize.xsm() * 0.25),
                      Icon(Icons.arrow_back_ios_new,
                          size: AppSize.md(),
                          color: AppColors.lighterGreyColor2),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: AppSize.md(),
              ),
              if (numberUnreadMessage != null && numberUnreadMessage! > 0)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: AppSize.xxl() * 0.60,
                    width: AppSize.xxl() * 0.60,
                    decoration: const BoxDecoration(
                      color: AppColors.blueColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        numberUnreadMessage.toString(),
                        style: AppTextStyles.numberUnreadMessage,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
