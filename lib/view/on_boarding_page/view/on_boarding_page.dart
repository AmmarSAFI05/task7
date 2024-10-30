import 'package:flutter/material.dart';
import 'package:task7_demo/widgets/social_app_text_form_field.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController a = TextEditingController();
    return Scaffold(
      body: SocialAppTextFormField(controller: a,),
      // Code the ON BOARDING page here.
    );
  }
}
