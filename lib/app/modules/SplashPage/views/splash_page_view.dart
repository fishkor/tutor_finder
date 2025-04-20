import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashPageController());
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: Center(
        child: FlutterLogo(
          size: 100,
          textColor: BLACK_COLOR,
          style: FlutterLogoStyle.horizontal,
        ),
      ),
    );
  }
}
