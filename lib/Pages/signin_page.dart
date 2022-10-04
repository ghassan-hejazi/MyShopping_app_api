// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, prefer_const_constructors_in_immutables, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_shop_app/Pages/home2_page.dart';
import 'package:my_shop_app/Pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3C4657),
          ),
        ),
        backgroundColor: const Color(0xFFFD6969),
        title: Text(
          'Sing in',
          style: GoogleFonts.cairo(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3C4657),
          ),
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
              padding: const EdgeInsets.only(left: 24, right: 24),
              children: [
                const SizedBox(height: 56),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.email,
                          size: 25,
                        ),
                      ),
                      const VerticalDivider(
                        width: 0,
                        color: Colors.black54,
                        endIndent: 10,
                        indent: 10,
                        thickness: 1.5,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          cursorHeight: 30,
                          style: const TextStyle(
                            fontSize: 20,
                            decorationThickness: 0,
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                            ),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 15, top: 5, bottom: 5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.lock,
                          size: 25,
                        ),
                      ),
                      const VerticalDivider(
                        width: 0,
                        color: Colors.black54,
                        endIndent: 10,
                        indent: 10,
                        thickness: 1.5,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: password,
                          keyboardType: TextInputType.visiblePassword,
                          cursorHeight: 30,
                          style: const TextStyle(
                            fontSize: 20,
                            decorationThickness: 0,
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.visibility)),
                            labelStyle: const TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                            ),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 15, top: 5, bottom: 5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageTow()));
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.cairo(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3C4657),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      backgroundColor: const Color(0xFFFD6969),
                    )),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'dont have an account ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(SignUpPage());
                      },
                      child: const Text(
                        'Create account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ]),
        ),
      ),
    );
  }
}
