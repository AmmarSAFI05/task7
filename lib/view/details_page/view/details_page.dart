import 'package:flutter/material.dart';
import 'package:task7_demo/core/constant/app_colors.dart';
import 'package:task7_demo/core/constant/app_fonts.dart';
import 'package:task7_demo/core/constant/app_images.dart';
import 'package:task7_demo/core/constant/app_sizes.dart';
import 'package:task7_demo/core/constant/app_text.dart';
import 'package:task7_demo/view/schedule_page/view/schedule_page.dart';

import '../../../widgets/soical_app_button.dart';


//made by judy
class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    // Initialize AppSize
    AppSize.init(context);

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: Image.asset(
            AppImages.arrowBack,
            width: AppSize.iconMd(),
            height: AppSize.iconMd(),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15, right: 35),
          child: Center(
            child: Text(
              'Detail course',
              style: TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: AppSize.fontSizeMd(),
                fontWeight: AppFontWeight.bold,
                color: AppColors.black,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 10),
            child: Stack(
              children: [
                Image.asset(
                  AppImages.notification,
                  width: AppSize.iconSm(),
                  height: AppSize.iconMd(),
                ),
                Positioned(
                    top: 5,
                    right: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.bgColor),
                          shape: BoxShape.circle,
                          color: AppColors.orangeColor),
                    ))
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
              // Course Image with Play Button Overlay
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: double.infinity,
                  height: AppSize.screenHeight * 0.25,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.63,
                          offset: Offset(0, 4.51),
                          spreadRadius: 0.25,
                          color: AppColors.black,
                        )
                      ],
                      borderRadius:
                          BorderRadius.circular(AppSize.borderRadiusLg() * 0.9),
                      image: const DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            AppImages.videoBox,
                          ))),
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

              // Course Title
              Text(
                AppText.detailsTitle,
                style: TextStyle(
                  fontSize: AppSize.fontSizeXlg(),
                  fontWeight: AppFontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: AppSize.sm()),

              // Tags Row
              Row(
                children: [
                  _buildTag('6 lessons', AppColors.bgColor, AppColors.bluelight,
                      BorderRadius.circular(AppSize.borderRadiusSm() * 0.5)),
                  SizedBox(width: AppSize.sm()),
                  _buildTag('Design', AppColors.bgColor, AppColors.blueColor,
                      BorderRadius.circular(AppSize.borderRadiusSm() * 0.5)),
                  SizedBox(width: AppSize.sm()),
                  _buildTag('Free', AppColors.bgColor, AppColors.purpleColor,
                      BorderRadius.circular(AppSize.borderRadiusSm() * 0.5)),
                ],
              ),
              SizedBox(height: AppSize.xsm()),

              // Course Description
              Text(
                AppText.detailsSubTitle,
                style: TextStyle(
                    fontSize: AppSize.fontSizeSm(),
                    color: AppColors.lightGreyColor,
                    fontWeight: AppFontWeight.normal),
              ),
              SizedBox(height: AppSize.spaceBtwSections()),

              // Instructor Profile Section
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
                          bottom: -5,
                          right: 0,
                          child: Image.asset(
                            AppImages.greenDot,
                            width: AppSize.iconSm(),
                          ))
                    ],
                  ),
                  SizedBox(width: AppSize.sm()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.detailsUsername,
                        style: TextStyle(
                          fontSize: AppSize.fontSizeMd(),
                          fontWeight: AppFontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        AppText.detailsSubUsername,
                        style: TextStyle(
                          fontWeight: AppFontWeight.med,
                          fontSize: AppSize.fontSizeSm(),
                          color: AppColors.lightGreyColor,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 1),
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
                            '5h 21m',
                            style: TextStyle(
                              fontSize: AppSize.fontSizeSm(),
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                      // Free e-book tag under the time
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: _buildTag(
                            'Free e-book',
                            AppColors.bgColor,
                            AppColors.yellowColor,
                            BorderRadius.circular(
                                AppSize.borderRadiusMd() * 0.7)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: AppSize.xsm(),
              ),
              // Action Row with Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 78,
                    height: 12.69,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(18)),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Center(
                          child: Text(
                            'Free e-book',
                            style: TextStyle(
                              fontWeight: AppFontWeight.med,
                              fontFamily: 'Poppins-Medium',
                              color: AppColors.bgColor,
                              fontSize: AppSize.fontSizeSm(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: double.infinity,
                          height: AppSize.screenHeight * 0.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppSize.borderRadiusSm()),
                              image: const DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(
                                    AppImages.courseTwo,
                                  ))),
                        ),
                      ),

                      // Follow Class container

                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              width: double.infinity,
                              height: AppSize.screenHeight * 0.059,
                              // Adjust height as needed
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
                            height: AppSize.sm() * 0.3,
                          ),
                          Positioned(
                            top: 0,
                            bottom: 12,
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
              )
            ],
          ),
        ),
      ),
    );
  }

  // Tag widget for displaying tags like "6 lessons", "Design", "Free", etc.
  Widget _buildTag(
      String text, Color color, Color colortwo, BorderRadius borderRadius) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.sm(),
        vertical: AppSize.xsm() * 0.3,
      ),
      decoration: BoxDecoration(
        color: colortwo,
        borderRadius: BorderRadius.circular(AppSize.borderRadiusSm() * 0.5),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: 'Poppins-Regular',
          fontSize: AppSize.fontSizeSm(),
          fontWeight: AppFontWeight.bold,
        ),
      ),
    );
  }
}
