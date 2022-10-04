// ignore_for_file: sort_child_properties_last, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_shop_app/Pages/signin_page.dart';
import 'package:my_shop_app/Pages/signup_page.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/logo_5.png',
            width: 250,
            height: 250,
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {
              Get.to(SignInPage());
            },
            child: Text(
              'Login',
              style: GoogleFonts.cairo(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFD6969),
                minimumSize: const Size(302, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Get.to(SignUpPage());
            },
            child: Text(
              'Signup',
              style: GoogleFonts.cairo(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2D2E49)),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE9E9EC),
                minimumSize: const Size(302, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ]),
      ),
    );
  }
}
