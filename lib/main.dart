import 'package:flutter/material.dart';


import 'core/constant/app_sizes.dart';
import 'view/on_boarding_page/view/on_boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);
    return MaterialApp(
      title: 'Task 7',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const OnBoardingPage(),
    );
  }
}
