// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:urbanpro/app/data/app_colors.dart';
import 'package:urbanpro/app/modules/HomePage/widgets/demo_home.dart';
import 'package:urbanpro/app/modules/HomePage/widgets/teacher_tile_card.dart';

import '../../../data/app_const.dart';
import '../controllers/home_page_controller.dart';
import '../widgets/drawer_home.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      appBar: AppBar(
        title: Text(APP_NAME),
        centerTitle: false,
        backgroundColor: BACKGROUND_COLOR,
        elevation: 0,
      ),
      drawer: HomeDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                style: TextStyle(color: BLACK_COLOR),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "What do you want to search?",
                  hintStyle: TextStyle(color: GREY_COLOR),

                  prefixIcon: Icon(Icons.search, color: DARK_GREY_COLOR),
                  suffixIcon: Icon(LineIcons.filter, color: DARK_GREY_COLOR),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: GREY_COLOR, width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Experience UrbanPro Live Classes",
                style: TextStyle(fontSize: 20),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Text("English", style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: [
                  SizedBox(height: 12),

                  TeacherTileCard(),
                  TeacherTileCard(),
                  TeacherTileCard(),
                  SizedBox(height: 12),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Text("Chemistry", style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: [
                  SizedBox(height: 12),
                  TeacherTileCard(),
                  TeacherTileCard(),
                  TeacherTileCard(),
                  SizedBox(height: 12),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Text("Mathematics", style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: [
                  SizedBox(height: 12),
                  TeacherTileCard(),
                  TeacherTileCard(),
                  TeacherTileCard(),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "How $APP_NAME Works?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 5),
            DemoHome(
              icon: LineIcons.user,
              title: "Find a tutor",
              subtitle:
                  "Search for tutors based on your requirements and preferences.",
            ),
            DemoHome(
              icon: LineIcons.calendar,
              title: "Book a class",
              subtitle:
                  "Choose a time slot that works for you and book a class with the tutor.",
            ),
            DemoHome(
              icon: LineIcons.video,
              title: "Attend the class",
              subtitle:
                  "Join the class and start learning with your tutor in real-time.",
            ),

            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
