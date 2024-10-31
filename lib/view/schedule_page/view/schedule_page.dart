import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/functions/login_validator.dart';
import '../../../core/text_styles.dart';
import '../../../widgets/schedule_time_container.dart';
import '../../../widgets/social_app_text_form_field.dart';
import '../../../widgets/soical_app_button.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  bool isChecked = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.borderRadiusLg()*0.75),
        color: AppColors.bgColor,
      ),

              padding: EdgeInsets.only(
                  left: 0.043*AppSize.screenWidth,
                  right: 0.048*AppSize.screenWidth,
                  top: 0.04*AppSize.screenHeight,
                  bottom: 0.029*AppSize.screenHeight),
              //color: AppColors.bgColor,
              width: AppSize.screenWidth,
              height: AppSize.screenHeight * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 0.036*AppSize.screenHeight),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppText.scheduleTitle,
                              style: AppTextStyles.onBoardingTitle,
                            ),
                            Text(
                              AppText.scheduleSubTitle,
                              style: AppTextStyles.onBoardingSubTitle,
                            ),

                          ],

                        ),
                        Container(

                          width: 0.115*AppSize.screenWidth,
                         // height: 0.06*AppSize.screenHeight,
                          height: 0.053*AppSize.screenHeight,
                          decoration: ShapeDecoration(
                            color: AppColors.lightGreyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSize.borderRadiusSm()*0.4),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.012*AppSize.screenHeight,
                                horizontal: 0.027*AppSize.screenWidth
                            ),
                            child: Image.asset(AppImages.calender),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: GridView(
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 0.018*AppSize.screenHeight,
                        crossAxisSpacing: 0.083*AppSize.screenWidth,
                        childAspectRatio: 2.3,
                      ),
                      children: [
                        CustomContainer(
                          containerColor: AppColors.fieldColor,
                          borderColor: AppColors.lightGreyContainerSchedColor,
                          textColor: AppColors.lightGreyContainerSchedColor,
                          text: "14.45 PM",
                        ),
                        CustomContainer(
                          containerColor: AppColors.fieldColor,
                          borderColor:AppColors.lightGreyContainerSchedColor,
                          textColor: AppColors.lightGreyContainerSchedColor,
                          text: "09.25 AM",
                        ),
                        CustomContainer(
                          containerColor: AppColors.orangeColor,
                          borderColor: AppColors.orangeColor,
                          textColor: AppColors.bgColor,
                          text: "09.45 AM",
                          hasShadow: true, // تفعيل الظل
                          customShadow: BoxShadow(
                            color: Color(0x3FEC5F5F),
                            blurRadius: 12.63,
                            offset: Offset(0, 4.51),
                            spreadRadius: 0,
                          ),
                        ),
                        CustomContainer(
                          containerColor: AppColors.bgColor,
                          borderColor: AppColors.orangeColor,
                          textColor: AppColors.orangeColor,
                          text: "08.55 PM",
                        ),
                        CustomContainer(
                          containerColor: AppColors.bgColor,
                          borderColor: AppColors.orangeColor,
                          textColor: AppColors.orangeColor,
                          text: "07.45 PM",
                        ),
                        CustomContainer(
                          containerColor: AppColors.fieldColor,
                          borderColor: AppColors.lightGreyContainerSchedColor,
                          textColor: AppColors.lightGreyContainerSchedColor,
                          text: "14.40 AM",
                        ),
                        CustomContainer(
                          containerColor: AppColors.fieldColor,
                          borderColor: AppColors.lightGreyContainerSchedColor,
                          textColor: AppColors.lightGreyContainerSchedColor,
                          text: "10.45 AM",
                        ),
                        CustomContainer(
                          containerColor: AppColors.bgColor,
                          borderColor: AppColors.orangeColor,
                          textColor: AppColors.orangeColor,
                          text: "08.40 PM",
                        ),
                        CustomContainer(
                          containerColor: AppColors.bgColor,
                          borderColor: AppColors.orangeColor,
                          textColor: AppColors.orangeColor,
                          text: "07.35 AM",
                        ),
                      ],
                    ),
                  ),

                  Form(
                      key: _formKey,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0.027*AppSize.screenHeight,
                                bottom: 0.01*AppSize.screenHeight),
                            child: Text(
                              AppText.email,
                              style: AppTextStyles.SchedulePageStyle,
                            ),
                          ),
                          SocialAppTextFormField(
                            validator: LoginValidator.validateEmail,
                            controller: emailController,
                            backgroundColor: AppColors.fieldColor,
                            textColor: AppColors.lightGreyContainerSchedColor,
                          hintText: AppText.emailHintText,
                            keyboardType: TextInputType.emailAddress,
                            hintTextColor: AppColors.lightGreyContainerSchedColor,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0.03*AppSize.screenHeight,
                                bottom: 0.017*AppSize.screenHeight),
                            child: Text(
                              AppText.telNum,
                              style: AppTextStyles.SchedulePageStyle,
                            ),
                          ),
                          SocialAppTextFormField(
                            validator: LoginValidator.validatePhonenum,
                            controller: phoneController,
                            backgroundColor: AppColors.fieldColor,
                            textColor: AppColors.lightGreyContainerSchedColor,
                            hintText: AppText.telNumHintText,
                            keyboardType: TextInputType.phone,
                            hintTextColor: AppColors.lightGreyContainerSchedColor,
                          ),

                        ],
                      )),

                  Padding(
                    padding: EdgeInsets.only(top: 0.026*AppSize.screenHeight,bottom: 0.01*AppSize.screenHeight),
                    child: Text(
                      AppText.scheduleDateAndTime,
                      style: AppTextStyles.onBoardingTitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 0.043*AppSize.screenHeight),
                    child:

                        Stack(
                                  children: [

                                    Container(width: 0.69*AppSize.screenWidth,height: 0.029*AppSize.screenHeight,),
                                    Row(
                                      children: [
                                        SizedBox(width: 30),
                                        Container(
                                          child: Text(
                                            AppText.dateAndTime,
                                            style: AppTextStyles. onBoardingSubTitle,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Positioned(
                                      top: -0.013*AppSize.screenHeight,
                                      left: -0.02*AppSize.screenWidth,
                                      child: Checkbox(
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value!;
                                        },);
                                      },
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.borderRadiusLg()*0.12)),
                                      activeColor: AppColors.lightGreyContainerSchedColor,
                                      checkColor: AppColors.lightGreyColor,
                                                                ),
                                    ),

                                  ],
                            ),
                  ),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.borderRadiusLg()*0.2)),
                    minimumSize: Size(0.916*AppSize.screenWidth,0.07*AppSize.screenHeight)),

                    child: Center(child: Text(AppText.scheduleButton,
                      style: AppTextStyles.ScheduleButtonStyle,),),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            );
  }
}
