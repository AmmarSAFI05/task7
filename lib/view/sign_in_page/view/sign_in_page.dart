import 'package:flutter/material.dart';
import 'package:task7_demo/core/constant/const_data.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/functions/login_validator.dart';
import '../../../core/text_styles.dart';
import '../../../widgets/social_app_text_form_field.dart';
import '../../../widgets/soical_app_button.dart';
import '../../home_page/view/home_page.dart';
import '../../sign_up_page/view/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ConstData appConst = ConstData();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: AppSize.xl()),
              width: AppSize.screenWidth * 0.9,
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.focalIcon,
                      width: AppSize.iconLg() * 1.75,
                    ),
                    SizedBox(height: AppSize.xl()),
                    // Email field
                    SocialAppTextFormField(
                      controller: emailController,
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      isPassword: false,
                      validator: (val) =>
                          LoginValidator.validateEmail(emailController.text),
                    ),
                    SizedBox(height: AppSize.md()),
                    // Password field
                    SocialAppTextFormField(
                      controller: passwordController,
                      hintText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      isPassword: true,
                      validator: (val) => LoginValidator.validatePassword(
                          passwordController.text),
                    ),
                    SizedBox(height: AppSize.xl()),
                    // Log In button
                    SocialAppButton(
                      text: 'Log in',
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          // Write email and password to secure storage
                          await appConst.writeSecureData(
                              "email", emailController.text);
                          await appConst.writeSecureData(
                              "password", passwordController.text);
                          // Navigate to HomePage and replace SignInPage
                          // ignore: use_build_context_synchronously
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) =>const  HomePage()),
                          );
                        }
                      },
                      textColor: AppColors.bgColor,
                    ),
                    SizedBox(height: AppSize.xl()),
                    Text(
                      AppText.forgotPassword,
                      style: AppTextStyles.forgotPassword,
                    ),
                    SizedBox(height: AppSize.xl() * 1.5),
                    // Divider with "or"
                    Row(
                      children: [
                        const   Expanded(
                          child:
                          Divider(color: AppColors.greyColor, thickness: 2),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: AppSize.md()),
                          child: Text(
                            "or",
                            style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: AppSize.fontSizeMd()),
                          ),
                        ),
                        const  Expanded(
                          child:
                          Divider(color: AppColors.greyColor, thickness: 2),
                        ),
                      ],
                    ),
                    SizedBox(height: AppSize.md() * 1.5),
                    // Facebook Login Button
                    SocialAppButton(
                      backgroundColor: AppColors.blueColor,
                      onPressed: () {
                        // Add Facebook login functionality
                      },
                      text: '',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.facebook,
                            width: AppSize.md() * 1.25,
                          ),
                          SizedBox(width: AppSize.md() * 1.5),
                          Text(
                            AppText.facebookLogin,
                            style: AppTextStyles.loginWithFacebook,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSize.md()),
                    // Google Login Button
                    SocialAppButton(
                      backgroundColor: AppColors.fieldColor,
                      onPressed: () {
                        // Add Google login functionality
                      },
                      text: '',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.google,
                            width: AppSize.md() * 1.50,
                          ),
                          SizedBox(width: AppSize.md() * 1.5),
                          Text(
                            AppText.googleLogin,
                            style: AppTextStyles.loginWithGoogle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSize.xl() * 3.75),
                    // Sign Up option
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${AppText.notRegistered} ",
                          style: AppTextStyles.doNotHaveAccount,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>const  SignUpPage()),
                            );
                          },
                          child: Text(
                            AppText.signUp,
                            style: AppTextStyles.signUp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
