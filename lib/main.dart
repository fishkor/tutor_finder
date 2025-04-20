import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanpro/app/data/app_colors.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,

      theme: ThemeData(
        primarySwatch: PRIMARY_COLOR,
        brightness: Brightness.light,
        useMaterial3: true,
        fontFamily: GoogleFonts.varelaRound().fontFamily,
        textTheme: GoogleFonts.varelaRoundTextTheme(),
      ),
    ),
  );
}
