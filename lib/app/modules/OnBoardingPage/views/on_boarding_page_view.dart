import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:urbanpro/app/modules/OnBoardingPage/pages/page_three.dart';
import 'package:urbanpro/app/modules/OnBoardingPage/pages/page_two.dart';

import '../../../data/app_colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/on_boarding_page_controller.dart';
import '../pages/page_one.dart';

class OnBoardingPageView extends GetView<OnBoardingPageController> {
  OnBoardingPageView({super.key});
  @override
  final controller = Get.put(OnBoardingPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('HomePageView'), centerTitle: true),
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            children: [PageOne(), PageTwo(), PageThree()],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 60,

                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: (Get.width * 0.5) - 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                          ),
                          color: Colors.white.withAlpha(40),
                          border: Border.all(color: GREY_COLOR, width: 1),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN_PAGE);
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.HOME_PAGE);
                        },
                        child: Container(
                          height: 50,
                          width: (Get.width * 0.5) - 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                            ),
                            color: PRIMARY_COLOR,
                          ),
                          child: Center(
                            child: Text(
                              "SKIP",
                              style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
