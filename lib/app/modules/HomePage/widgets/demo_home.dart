// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:urbanpro/app/data/app_colors.dart';

class DemoHome extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const DemoHome({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width - 40,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: WHITE_COLOR,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: GREY_COLOR, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Container(
                height: 115,
                width: 115,
                decoration: BoxDecoration(
                  color: PRIMARY_COLOR,

                  // borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: WHITE_COLOR, size: 50),
              ),
            ),
            Text(title, style: TextStyle(fontSize: 20)),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: DARK_GREY_COLOR),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
