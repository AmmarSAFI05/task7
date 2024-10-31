import 'package:flutter/material.dart';

// import 'package:task7/view/sign_in_page/view/sign_in_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/functions/login_validator.dart';
import '../../../core/text_styles.dart';
import '../../../widgets/social_app_text_form_field.dart';
import '../../../widgets/soical_app_button.dart';
import '../../home_page/view/home_page.dart';
import '../../sign_in_page/view/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController UserNameController = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey();

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
                key: formstate,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.focalIcon,
                      width: AppSize.iconLg() * 1.75,
                    ),
                    SizedBox(
                      height: AppSize.xl(),
                    ),
                    SocialAppTextFormField(
                      controller: UserNameController,
                      hintText: "FullName",
                      keyboardType: TextInputType.text,
                      isPassword: false,
                      validator: (val) => LoginValidator.validatePassword(
                          UserNameController.text),
                    ),
                    SizedBox(
                      height: AppSize.md(),
                    ),
                    SocialAppTextFormField(
                      controller: EmailController,
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      isPassword: false,
                      validator: (val) =>
                          LoginValidator.validatePassword(EmailController.text),
                    ),
                    SizedBox(
                      height: AppSize.md(),
                    ),
                    SocialAppTextFormField(
                      controller: PasswordController,
                      hintText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      isPassword: true,
                      validator: (val) => LoginValidator.validatePassword(
                          PasswordController.text),
                    ),
                    SizedBox(
                      height: AppSize.xl(),
                    ),
                    SocialAppButton(
                      text: 'Sign Up ',
                      onPressed: () {
                        if (formstate.currentState!.validate()) {
                          //  await prefs.setBool(ConstData.isLogin, true);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        }
                      },
                      textColor: AppColors.bgColor,
                    ),
                    SizedBox(
                      height: AppSize.xl() * 1.25,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                                color: AppColors.greyColor, thickness: 2)),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: AppSize.md()),
                          child: Text("or",
                              style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: AppSize.fontSizeMd())),
                        ),
                        Expanded(
                            child: Divider(
                                color: AppColors.greyColor, thickness: 2)),
                      ],
                    ),
                    SizedBox(
                      height: AppSize.md() * 1.5,
                    ),
                    SocialAppButton(
                        backgroundColor: AppColors.blueColor,
                        onPressed: () {},
                        text: '',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImages.facebook,
                              width: AppSize.md() * 1.25,
                            ),
                            SizedBox(
                              width: AppSize.md() * 1.5,
                            ),
                            Text(
                              AppText.facebookLogin,
                              style: AppTextStyles.loginwithfacebook,
                            )
                          ],
                        )),
                    SizedBox(
                      height: AppSize.md(),
                    ),
                    ////////////////////////////////
                    SocialAppButton(
                      backgroundColor: AppColors.fieldColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.google,
                            width: AppSize.md() * 1.50,
                          ),
                          SizedBox(
                            width: AppSize.md() * 1.5,
                          ),
                          Text(AppText.googleLogin,
                              style: AppTextStyles.loginwithgoogle),
                        ],
                      ),
                      // onPressed: () {},
                      text: '', onPressed: () {},
                    ),

                    SizedBox(
                      height: AppSize.xl(),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: AppSize.fontSizeSm() * 1.20,
                                color: AppColors.greyColor),
                            children: [
                              TextSpan(
                                text: "By signing up you accept the",
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: "Terms of Service ",
                                style: TextStyle(color: AppColors.blueColor),
                              ),
                              TextSpan(
                                text: "and",
                              ),
                              TextSpan(
                                text: " Privacy Policy",
                                style: TextStyle(color: AppColors.blueColor),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: AppSize.xxl() * 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppText.registered,
                              style: AppTextStyles.dont_have_account,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                              },
                              child: Text(
                                AppText.signIn,
                                style: AppTextStyles.sign_up,
                              ),
                            ),
                          ],
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
