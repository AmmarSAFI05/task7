import 'package:flutter/material.dart';

// import 'package:task7/core/constant/const_data.dart';
// import 'package:task7/view/home_page/view/home_page.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/text_styles.dart';
import '../../../widgets/soical_app_button.dart';
import '../../sign_in_page/view/sign_in_page.dart';
// import '../../sign_up_page/view/sign_up_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  //  ConstData islogin = ConstData();
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     if (await islogin.isLoggin()) {

  //       Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) => HomePage()),
  //       );
  //     } else {
  //       Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) =>SignInPage()),
  //       );
  //     }
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Code the ON BOARDING page here.
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: AppSize.xxl() * 4),
          width: AppSize.screenWidth * 0.8,
          child: Column(
            children: [
              Image.asset(
                AppImages.focalXText,
                width: AppSize.screenWidth * 0.55,
              ),
              Image.asset(
                AppImages.communityText,
                width: AppSize.screenWidth * 0.55,
              ),
              SizedBox(height: AppSize.xxl() * 5),
              Text(
                AppText.onBoardingTitle,
                style: AppTextStyles.onBoardingTitle,
              ),
              SizedBox(
                height: AppSize.sm(),
              ),
              Text(
                AppText.onBoardingSubTitle,
                textAlign: TextAlign.center,
                style: AppTextStyles.onBoardingSubTitle,
              ),
              SizedBox(height: AppSize.xl()),
              SocialAppButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                textColor: AppColors.bgColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
