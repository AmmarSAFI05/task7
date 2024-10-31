import 'package:flutter/material.dart';
import 'package:task7_demo/core/constant/app_images.dart';
import 'package:task7_demo/core/text_styles.dart';
import 'package:task7_demo/widgets/social_app_text_form_field.dart';
import 'package:task7_demo/widgets/soical_app_button.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: AppSize.screenWidth * 0.9,
          child: Column(
            children: [
              SizedBox(
                height: AppSize.xl() * 2,
              ),
              const CircleAvatar(
                maxRadius: 50,
                backgroundImage: AssetImage(AppImages.profile7),
                backgroundColor: AppColors.orangeColor,
              ),
              SizedBox(
                height: AppSize.spaceBtwSections(),
              ),
              SocialAppTextFormField(
                controller: usernameController,
                hintText: "Username",
              ),
              SizedBox(
                height: AppSize.spaceBtwInputField(),
              ),
              SocialAppTextFormField(
                controller: emailController,
                hintText: "Email",
              ),
              SizedBox(
                height: AppSize.spaceBtwInputField(),
              ),

              SocialAppTextFormField(
                controller: passwordController,
                hintText: "Password",
              ),
              SizedBox(
                height: AppSize.spaceBtwInputField(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(AppText.forgotPassword, style: AppTextStyles.greyText)
                ],
              ),
              SizedBox(
                height: AppSize.spaceBtwSections(),
              ),
              SocialAppButton(
                text: "Save",
                textColor: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
