// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:urbanpro/app/routes/app_pages.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('HomePageView'), centerTitle: true),
      body: PageView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/learning.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
              ),
            ),
            alignment: Alignment.topCenter,

            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Text(
                'UrbanPro',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),

          Container(
            //color: Colors.purple,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backimage2.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Center(
              // child:Icon(Icons.mail_outline),
              child: Text(
                'Respond to enqiries delivered to you',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.orange,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backimage3.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Center(
              child: Text(
                'Get Hired and grow your earnings',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: 60,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.LOGIN_PAGE);
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            VerticalDivider(color: Colors.black, thickness: 2),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.SINGUP_PAGE);
              },
              child: Text(
                "Sing Up",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
