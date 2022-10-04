// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, prefer_final_fields, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_shop_app/Pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController streetandregion = TextEditingController();

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
          'Create account',
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
                const SizedBox(height: 32),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.person,
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
                          controller: name,
                          autofocus: true,
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
                            labelText: 'Full Name',
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
                const SizedBox(height: 8),
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
                const SizedBox(height: 8),
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
                                onPressed: () {}, icon: Icon(Icons.visibility)),
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
                const SizedBox(height: 8),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.phone,
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
                          controller: mobilenumber,
                          keyboardType: TextInputType.phone,
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
                            labelText: 'Mobile Number',
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
                const SizedBox(height: 8),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.location_on,
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
                          controller: country,
                          keyboardType: TextInputType.streetAddress,
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
                            labelText: 'Country',
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
                const SizedBox(height: 8),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.location_on,
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
                          controller: city,
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
                            labelText: 'City',
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
                const SizedBox(height: 8),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.location_on,
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
                          controller: streetandregion,
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
                            labelText: 'Street Or Region',
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
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Text(
                      'Create',
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
                      'do you have an account ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                       Get.to(SignInPage());
                      },
                      child: const Text(
                        'Sing in',
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
