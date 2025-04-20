import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../data/app_colors.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BACKGROUND_COLOR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/lottie/one.json"),
          Padding(
            padding: EdgeInsets.all(45),
            child: Column(
              children: [
                Text(
                  "Find the right tutor for you",
                  style: GoogleFonts.varelaRound(
                    fontSize: 20,
                    color: BLACK_COLOR,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "Search for tutors and trainers in your area. Get the best match for your learning needs.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.varelaRound(
                    fontSize: 16,
                    color: DARK_GREY_COLOR,
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
