import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:task7_demo/view/account_page/view/account_page.dart';
import 'package:task7_demo/view/explore_page/view/explore_page.dart';
import 'package:task7_demo/view/messages_page/view/message_page.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_sizes.dart';
import '../../home_page/view/home_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        PersistentTabController(initialIndex: 0); // Set initial index as needed
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const ExplorePage(),
      const MessagePage(),
      const AccountPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          AppImages.homeEnabled,
          width: AppSize.iconMd() * 0.8,
        ),
        inactiveIcon: Image.asset(
          AppImages.homeDisabled,
          width: AppSize.iconMd() * 0.8,
        ),
        title: "Home",
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          AppImages.explore,
          color: AppColors.orangeColor,
          width: AppSize.iconMd() * 0.9,
        ),
        inactiveIcon:
            Image.asset(AppImages.explore, width: AppSize.iconMd() * 0.9),
        title: "Explore",
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(AppImages.messageEnabled,
            width: AppSize.iconMd() * 0.8),
        title: "Messages",
        inactiveIcon: Stack(children: [
          Positioned(
              top: AppSize.sm(),
              bottom: AppSize.sm(),
              right: AppSize.sm(),
              left: AppSize.sm(),
              child: Image.asset(AppImages.messageDisabled,
                  width: AppSize.iconMd() * 0.9)),
          Align(
              alignment: const Alignment(0.25, -0.5),
              child: Container(
                width: AppSize.md(),
                height: AppSize.md(),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.orangeColor),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ))
        ]),
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(AppImages.profileDisabled,
            width: AppSize.iconMd() * 0.6),
        icon: Image.asset(AppImages.profileDisabled,
            color: AppColors.orangeColor, width: AppSize.iconMd() * 0.6),
        title: "Account",
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        backgroundColor: AppColors.bgColor,
        navBarStyle: NavBarStyle.style12,
        confineToSafeArea: true,
        hideNavigationBarWhenKeyboardAppears: true,
        decoration:
            NavBarDecoration(colorBehindNavBar: Colors.white, boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withOpacity(0.4),
            blurRadius: 15,
            offset: const Offset(0, -15),
          ),
        ]),
        navBarHeight: AppSize.screenHeight * 0.065,
        padding: EdgeInsets.only(bottom: AppSize.sm()),
      ),
    );
  }
}
