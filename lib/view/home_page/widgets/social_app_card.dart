
import 'package:flutter/material.dart';
import 'package:task7_demo/core/text_styles.dart';
import 'package:task7_demo/view/home_page/widgets/social_app_tags.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_fonts.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../details_page/view/details_page.dart';

class SocialAppCard extends StatelessWidget {

  const SocialAppCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
        onTap: () =>
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsPage(),
            )),
        child: Container(
          width: AppSize.screenWidth * 0.8,
          height: AppSize.screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.borderRadiusSm()),
            image: const DecorationImage(
              image:
              AssetImage(AppImages.containerBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSize.md(),
                vertical: AppSize.xl()),
            child: Stack(
              children: [
                // Free e-book label
                Positioned(
                  top: AppSize.sm(),
                  left: AppSize.sm(),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.sm() * 1.5,
                        vertical: AppSize.sm()),
                    decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(
                          AppSize.borderRadiusSm()),
                    ),
                    child: Text(
                      AppText.freeEBook,
                      style:AppTextStyles.freeEBook
                    ),
                  ),
                ),

                Positioned(
                  bottom: AppSize.sm(),
                  left: AppSize.sm(),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.detailsTitle,
                        style: AppTextStyles.detailsTitle
                      ),
                      SizedBox(height: AppSize.sm()),
                      Row(
                        children: [
                          Icon(Icons.access_time,
                              color: AppColors.lightGreyColor,
                              size: AppSize.iconSm()),
                          SizedBox(
                              width: AppSize.sm() * 0.25),
                          Text(
                            '5h 21m',
                            style:AppTextStyles.detailsTime
                          ),
                        ],
                      ),
                      SizedBox(height: AppSize.sm() * 1.25),
                      Row(
                        children: [
                          const TagWidget(
                              text: '6 lessons',
                              color:
                              AppColors.lightBlueColor),
                          SizedBox(
                              width: AppSize.sm() * 0.75),
                          const TagWidget(
                              text: 'UI/UX',
                              color: AppColors.blueColor),
                          SizedBox(
                              width: AppSize.sm() * 0.75),
                          const TagWidget(
                              text: 'Free',
                              color: AppColors.purpleColor),
                        ],
                      ),
                      SizedBox(
                        height: AppSize.sm(),
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                                AppImages
                                    .containerProfilePic),
                          ),
                          SizedBox(width: AppSize.sm()),
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppText.detailsUsername,
                                style: AppTextStyles.detailsUsername,
                              ),
                              Text(
                                AppText.detailsSubUsername,
                                style:AppTextStyles.detailsSubUsername,

                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
