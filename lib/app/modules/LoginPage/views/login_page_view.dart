import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:urbanpro/app/routes/app_pages.dart';

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
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20),
              child: Text(
                "Login to your account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            InkWell(
              onTap: () {
                Get.offAllNamed(Routes.HOME_PAGE);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 195, 195),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),

                width: 200,
                height: 37,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 8),
                    Text(
                      "Login with email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 195, 195),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),

              width: 200,
              height: 37,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 8),
                  Text(
                    "Login with email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
