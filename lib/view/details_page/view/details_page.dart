import 'package:flutter/material.dart';
import 'package:task7_demo/core/constant/app_colors.dart';

import 'package:task7_demo/core/constant/app_images.dart';
import 'package:task7_demo/core/constant/app_sizes.dart';
import 'package:task7_demo/core/constant/app_text.dart';
import 'package:task7_demo/core/text_styles.dart';
import 'package:task7_demo/view/schedule_page/view/schedule_page.dart';
import 'package:task7_demo/widgets/social_app_tags.dart';

import '../../../widgets/soical_app_button.dart';



class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(top: AppSize.sm(), left: AppSize.xsm()),
          child: Image.asset(
            AppImages.arrowBack,
            width: AppSize.iconMd(),
            height: AppSize.iconMd(),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: AppSize.sm(), right: AppSize.md()),
          child: Center(
            child: Text(
              AppText.detailsAppBar,
              style: AppTextStyles.detailsAppBar,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: AppSize.sm(), right: AppSize.xsm()),
            child: Stack(
              children: [
                Image.asset(
                  AppImages.notification,
                  width: AppSize.iconSm(),
                  height: AppSize.iconMd(),
                ),
                Positioned(
                  top: AppSize.md() * 0.09,
                  right: AppSize.sm() * 0,
                  child: Container(
                    width: AppSize.md() * 0.5,
                    height: AppSize.md() * 0.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.bgColor),
                      shape: BoxShape.circle,
                      color: AppColors.orangeColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.md()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: AppSize.md()),
                child: Container(
                  width: double.infinity,
                  height: AppSize.screenHeight * 0.28,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppSize.borderRadiusLg() * 0.9),
                    image: const DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        AppImages.videoBox,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_circle_fill,
                      color: Colors.white,
                      size: AppSize.screenWidth * 0.16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppSize.md()),
              Text(
                AppText.detailsTitle,
                style: AppTextStyles.detailsTitle,
              ),
              SizedBox(height: AppSize.sm()),
              Row(
                children: [
                  SocialAppTags(
                      text: AppText.detailsFeatures1,
                      color: AppColors.bgColor,
                      colortwo: AppColors.bluelight,
                      borderRadius: BorderRadius.circular(
                          AppSize.borderRadiusSm() * 0.5)),
                  SizedBox(width: AppSize.sm()),
                  SocialAppTags(
                      text: AppText.detailsFeatures2,
                      color: AppColors.bgColor,
                      colortwo: AppColors.blueColor,
                      borderRadius: BorderRadius.circular(
                          AppSize.borderRadiusSm() * 0.5)),
                  SizedBox(width: AppSize.sm()),
                  SocialAppTags(
                      text: AppText.detailsFeatures3,
                      color: AppColors.bgColor,
                      colortwo: AppColors.purpleColor,
                      borderRadius: BorderRadius.circular(
                          AppSize.borderRadiusSm() * 0.5)),
                ],
              ),
              SizedBox(height: AppSize.xsm()),
              Text(
                AppText.detailsSubTitle,
                style: AppTextStyles.detailsSubTitle,
              ),
              SizedBox(height: AppSize.spaceBtwSections()),
              Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: AppSize.imageSize() * 0.3,
                        backgroundImage: const AssetImage(
                          AppImages.avatar,
                        ),
                      ),
                      Positioned(
                        bottom: AppSize.sm() * 0.032,
                        right: AppSize.sm() * 0,
                        child: Image.asset(
                          AppImages.greenDot,
                          width: AppSize.iconSm(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: AppSize.sm()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.detailsUsername,
                        style: AppTextStyles.detailsUsername,
                      ),
                      Text(
                        AppText.detailsSubUsername,
                        style: AppTextStyles.detailsSubUsername,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppImages.stopwatch,
                            color: AppColors.greyColor,
                            width: AppSize.screenWidth * 0.03,
                          ),
                          SizedBox(width: AppSize.xsm()),
                          Text(
                            AppText.hour,
                            style: AppTextStyles.hour,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: AppSize.xsm()),
                        child: SocialAppTags(
                          text: AppText.freeEBook,
                          color: AppColors.bgColor,
                          colortwo: AppColors.yellowColor,
                          borderRadius: BorderRadius.circular(
                              AppSize.borderRadiusMd() * 5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: AppSize.lg()),
              SizedBox(
                height: AppSize.sm() * 2,
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSize.xsm() * 0.08),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: AppSize.xsm() * 0.03),
                      child: Container(
                        width: double.infinity,
                        height: AppSize.screenHeight * 0.1,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppSize.borderRadiusSm()),
                          image:  DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                             AppImages.courseTwo,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppSize.sm() * 0.01,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: AppSize.md() * 0.9,
                              bottom: AppSize.sm() * 0.02),
                          child: Container(
                            width: double.infinity,
                            height: AppSize.screenHeight * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppSize.borderRadiusSm()),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(AppImages.courseOne),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppSize.md() * 0.02,
                        ),
                        Positioned(
                          top: AppSize.sm() * 0.05,
                          bottom: AppSize.sm() * 1.8,
                          child: SocialAppButton(
                            text: AppText.detailsButton,
                            textColor: AppColors.bgColor,
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => const SchedulePage(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
