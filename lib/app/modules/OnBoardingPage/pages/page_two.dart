import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../data/app_colors.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BACKGROUND_COLOR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/lottie/two.json"),
          Padding(
            padding: EdgeInsets.all(45),
            child: Column(
              children: [
                Text(
                  "Get the best learning experience",
                  style: GoogleFonts.varelaRound(
                    fontSize: 20,
                    color: BLACK_COLOR,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "No matter what your learning style is, we have the right tutor for you.",
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
