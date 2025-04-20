import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../../data/app_colors.dart';

class TeacherTileCard extends StatelessWidget {
  const TeacherTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 80,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 185, 185, 185), width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.only(left: 10, top: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: WHITE_COLOR,
              border: Border.all(color: DARK_GREY_COLOR, width: 1),
              image: DecorationImage(
                image: CachedNetworkImageProvider("https://picsum.photos/80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Alakh Panday",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  width: Get.width - 210,
                  child: Text(
                    "Class 6 Tuition - Scinece , Mathematics, Computers by Asish Sir",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "PHD, IIT Kharagpur",
                      style: TextStyle(color: DARK_GREY_COLOR),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(LineIcons.sms, color: DARK_GREY_COLOR, size: 25),
                    SizedBox(width: 5),

                    Icon(LineIcons.phone, color: DARK_GREY_COLOR, size: 25),
                    SizedBox(width: 5),

                    Icon(LineIcons.whatSApp, color: DARK_GREY_COLOR, size: 25),
                    SizedBox(width: 5),

                    Icon(
                      LineIcons.locationArrow,
                      color: DARK_GREY_COLOR,
                      size: 25,
                    ),
                    SizedBox(width: 5),
                    Text("Barasat", style: TextStyle(color: DARK_GREY_COLOR)),
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
