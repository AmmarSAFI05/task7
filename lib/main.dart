import 'package:flutter/material.dart';
import 'package:task7_demo/view/bottom_nav_bar_page/view/bottom_nav_bar_page.dart';
import 'core/constant/app_sizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 7',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const BottomNavigationBarPage(),
    );
  }
}
