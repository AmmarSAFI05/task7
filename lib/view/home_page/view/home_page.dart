import 'package:flutter/material.dart';
import 'package:task7_demo/core/text_styles.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_fonts.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../../widgets/social_app_circle_avatar.dart';
import '../widgets/social_app_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedButtonIndex = 0;
  int currentPageIndex = 0;

  // List of SocialAppCards
  final List<Widget> socialAppCards = [
    const SocialAppCard(),
    const SocialAppCard(),
    const SocialAppCard(),
  ];

  @override
  Widget build(BuildContext context) {
    List<String> profilePics = [
      AppImages.profilePic1,
      AppImages.profilePic2,
      AppImages.profilePic3,
      AppImages.profilePic4,
    ];
    List<String> categories = ["All", "UI/UX", "Illustration", "3D Animation"];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.md(),
              vertical: AppSize.lg(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: AppSize.xxl(),
                      height: AppSize.xxl(),
                      child: const SocialAppCircleAvatar(
                        imageUrl: AppImages.profile7,
                      ),
                    ),
                    SizedBox(width: AppSize.sm() * 1.5),
                    Column(
                      children: [
                        Text(
                          AppText.homeUser,
                          style:AppTextStyles.homePageUser
                        ),
                        SizedBox(height: AppSize.sm() * 0.5),
                        Row(
                          children: [
                            Image.asset(
                              AppImages.budget,
                              width: AppSize.iconSm() * 0.75,
                            ),
                            SizedBox(width: AppSize.sm()),
                            Text(
                              "+1600",
                              style: AppTextStyles.pointsNumber
                            ),
                            SizedBox(width: AppSize.sm() * 0.25),
                            Text(
                              "Points",
                              style: AppTextStyles.points
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Image.asset(
                          AppImages.notification,
                          width: AppSize.lg() * 0.6,
                        ),
                        Positioned(
                          right: 0,
                          child: Image.asset(
                            AppImages.greenDot,
                            width: 5,
                            color: AppColors.orangeColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: AppSize.lg()),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      profilePics.length,
                      (index) => Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.orangeColor,
                              borderRadius: BorderRadius.circular(
                                AppSize.borderRadiusMd(),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.orangeColor.withOpacity(0.4),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            width: AppSize.iconLg() * 2.75,
                            height: AppSize.iconLg() * 2.75,
                            margin: EdgeInsets.only(right: AppSize.md()),
                            child: Center(
                              child: Container(
                                width: AppSize.iconLg() * 2.5,
                                height: AppSize.iconLg() * 2.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    AppSize.borderRadiusMd(),
                                  ),
                                ),
                                child: Image.asset(
                                  profilePics[index],
                                  width: AppSize.iconLg() * 2.25,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: AppSize.sm(),
                            child: Image.asset(
                              AppImages.liveIcon,
                              width: AppSize.iconLg(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSize.spaceBtwSections()),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Upcoming ',
                        style: AppTextStyles.firstRichText
                      ),
                      TextSpan(
                        text: "course of this week",
                        style: AppTextStyles.secondRichText
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSize.spaceBtwItems()),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      categories.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: AppSize.sm()),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedButtonIndex = index;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shadowColor: AppColors.greyColor,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(AppSize.borderRadiusSm()),
                              ),
                            ),
                            backgroundColor: selectedButtonIndex == index
                                ? AppColors.orangeColor
                                : AppColors.lighterGreyColor,
                          ),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              color: selectedButtonIndex == index
                                  ? Colors.white
                                  : AppColors.lightGreyColor,
                              height: 3,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSize.spaceBtwSections()),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                    child: Row(
                      children: List.generate(
                        socialAppCards.length,
                        (index) => Container(
                          child: Padding(
                            padding: EdgeInsets.only(right: AppSize.sm()),
                            child: socialAppCards[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: AppSize.xxl(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    socialAppCards.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentPageIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: AppSize.sm()),
                        width: currentPageIndex == index ? 20 : 12,
                        height: 7.5,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppSize.borderRadiusSm()),
                          color: currentPageIndex == index
                              ? AppColors.orangeColor
                              : AppColors.lightGreyColor1,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSize.spaceBtwSections()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
