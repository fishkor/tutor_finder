import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:urbanpro/app/data/app_colors.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
        // centerTitle: true,
      ),
      backgroundColor:
          BACKGROUND_COLOR, // Set the background color of the Scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20),
              child: Text(
                "Login ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                style: TextStyle(color: BLACK_COLOR),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "enter your email",
                  hintStyle: TextStyle(color: GREY_COLOR),

                  prefixIcon: Icon(Icons.email_rounded, color: DARK_GREY_COLOR),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: GREY_COLOR, width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                style: TextStyle(color: BLACK_COLOR),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "enter your password",
                  hintStyle: TextStyle(color: GREY_COLOR),
                  prefixIcon: Icon(Icons.lock_rounded, color: DARK_GREY_COLOR),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: GREY_COLOR, width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Handle login action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: PRIMARY_COLOR,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 16, color: WHITE_COLOR),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
