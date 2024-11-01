
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:task7_demo/core/constant/const_data.dart';
import 'package:task7_demo/view/bottom_nav_bar_page/view/bottom_nav_bar_page.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/text_styles.dart';
import '../../../widgets/soical_app_button.dart';
import '../../sign_in_page/view/sign_in_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final ConstData _constData = ConstData();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    _checkFirstLaunch();
  }

  Future<void> _checkFirstLaunch() async {
    final isFirstLaunch = await _secureStorage.read(key: 'isFirstLaunch');

    if (isFirstLaunch == null) {
      // First time launch: show onboarding and set flag to "false"
      await _secureStorage.write(key: 'isFirstLaunch', value: 'false');
    } else {
      // Not the first launch: go to SignInPage or HomePage based on login status
      await _navigateBasedOnLoginStatus();
    }
  }

  Future<void> _navigateBasedOnLoginStatus() async {
    final email = await _constData.readSecureData("email");
    final password = await _constData.readSecureData("password");

    final isLoggedIn = email != null &&
        email.isNotEmpty &&
        password != null &&
        password.isNotEmpty;

    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => isLoggedIn ? const BottomNavigationBarPage() :const SignInPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: AppSize.xxl() * 4),
          width: AppSize.screenWidth * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: AppSize.sm()),
              Text(
                AppText.onBoardingSubTitle,
                textAlign: TextAlign.center,
                style: AppTextStyles.onBoardingSubTitle,
              ),
              SizedBox(height: AppSize.xl()),
              SocialAppButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
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
