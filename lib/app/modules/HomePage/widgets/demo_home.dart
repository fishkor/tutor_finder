// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_icons/line_icons.dart';
import 'package:urbanpro/app/data/app_colors.dart';

class DemoHome extends StatelessWidget {
  const DemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: Get.width - 40,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromARGB(255, 185, 185, 185),
            width: 1,
          ),
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
                child: Icon(LineIcons.calendar, color: Colors.white, size: 50),
              ),
            ),
            Text("Book a Demo Class", style: TextStyle(fontSize: 20)),
            SizedBox(height: 5),
            Text(
              "Book a free demo class with a tutor. ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: DARK_GREY_COLOR),
            ),
          ],
        ),
      ),
    );
  }
}
