import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashPageController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(
        child: CircularProgressIndicator(color: Colors.white, strokeWidth: 3),
      ),
    );
  }
}
