


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../../../widgets/social_app_meesage_header.dart';
import '../../../widgets/social_app_message_card.dart';
import '../../../widgets/social_app_search_box.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.bgColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(AppSize.md()),
            child: Column(
              children: [
                SocialAppMeesageHeader(),
                SizedBox(
                  height: AppSize.md() * 1.25,
                ),
                SocialAppSearchBox(
                  controller: searchController,
                  hintText: "Search here",
                ),
                SizedBox(
                  height: AppSize.md() * 1.25,
                ),
                SocialAppMessageCard(AppImages.profile1, AppText.username1,
                    AppText.userMessage1, "15 min", true, 4),
                SocialAppMessageCard(AppImages.profile2, AppText.username2,
                    AppText.userMessage2, "Yesterday", false),
                SocialAppMessageCard(
                  AppImages.profile3,
                  AppText.username3,
                  AppText.userMessage3,
                  "Yesterday",
                  true,
                  1,
                ),
                SocialAppMessageCard(
                  AppImages.profile4,
                  AppText.username4,
                  AppText.userMessage4,
                  "2 week ago",
                  true,
                  2,
                ),
                SocialAppMessageCard(
                  AppImages.profile5,
                  AppText.username5,
                  AppText.userMessage5,
                  "14/08/20",
                  false,
                  4,
                ),
                SocialAppMessageCard(
                  AppImages.profile6,
                  AppText.username6,
                  AppText.userMessage6,
                  "13/08/20",
                  false,
                  4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
