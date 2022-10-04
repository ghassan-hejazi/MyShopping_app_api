// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_shop_app/Pages/home1_page.dart';
import 'package:my_shop_app/Pages/home2_page.dart';
import 'package:my_shop_app/Widget/imageSplashWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: AnimatedSplashScreen(
              duration: 2000,
              splashIconSize: 200,
              splash: ImageSplashWidget(),
              nextScreen: HomePageTow(),
              curve: Curves.decelerate,
              splashTransition: SplashTransition.rotationTransition,
              backgroundColor: Colors.white),
        );
      }
    );
  }
}

