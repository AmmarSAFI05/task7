import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../../core/constant/app_text.dart';
import '../widgets/social_app_message_header.dart';
import '../widgets/social_app_message_card.dart';
import '../widgets/social_app_search_box.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final List<Map<String, dynamic>> messages = [
    {
      "profileImage": AppImages.profile1,
      "username": AppText.username1,
      "userMessage": AppText.userMessage1,
      "timeMessage": "15 min",
      "online": true,
      "numberUnreadMessage": 4,
      "hasUnreadMessage":true
    },
    {
      "profileImage": AppImages.profile2,
      "username": AppText.username2,
      "userMessage": AppText.userMessage2,
      "timeMessage": "Yesterday",
      "online": false,
      "hasUnreadMessage":false
    },
    {
      "profileImage": AppImages.profile3,
      "username": AppText.username3,
      "userMessage": AppText.userMessage3,
      "timeMessage": "Yesterday",
      "online": true,
      "numberUnreadMessage": 1,
      "hasUnreadMessage":true
    },
    {
      "profileImage": AppImages.profile5,
      "username": AppText.username4,
      "userMessage": AppText.userMessage4,
      "timeMessage": "2 week ago",
      "online": true,
      "numberUnreadMessage": 2,
      "hasUnreadMessage":true

    },
    {
      "profileImage": AppImages.profile4,
      "username": AppText.username5,
      "userMessage": AppText.userMessage5,
      "timeMessage": "14/08/20",
      "online": false,
      "hasUnreadMessage":false
    },
    {
      "profileImage": AppImages.profile6,
      "username": AppText.username6,
      "userMessage": AppText.userMessage6,
      "timeMessage": "13/08/20",
      "online": false,
      "hasUnreadMessage":false
    },
  ];

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding: EdgeInsets.all(AppSize.md()),
          child: Column(
            children: [
              const SocialAppMessageHeader(),
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
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return Column(
                      children: [
                        SocialAppMessageCard(
                          profileImage: message["profileImage"],
                          username: message["username"],
                          userMessage: message["userMessage"],
                          timeMessage: message["timeMessage"],
                          online: message["online"],
                          numberUnreadMessage: message["numberUnreadMessage"],
                          hasUnreadMessage: message["hasUnreadMessage"],
                        ),
                        if (index != messages.length - 1)
                          Divider(
                            color: AppColors.lighterGreyColor2,
                            thickness: 1,
                            indent: AppSize.xxl() * 1.50,
                            height: AppSize.xsm() * 1.80,
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
