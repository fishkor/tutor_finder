import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/singup_page_controller.dart';

class SingupPageView extends GetView<SingupPageController> {
  const SingupPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingupPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SingupPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
