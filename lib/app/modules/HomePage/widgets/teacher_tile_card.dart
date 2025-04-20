import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';

class TeacherTileCard extends StatelessWidget {
  const TeacherTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
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
              color: Colors.white,
              border: Border.all(
                color: Color.fromARGB(255, 185, 185, 185),
                width: 1,
              ),
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
                    StarRating(
                      rating: 4,
                      allowHalfRating: false,
                      color: Colors.amber,
                    ),
                    Text("(6 Reviews)"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.calendar_month, color: Colors.grey, size: 25),
                    SizedBox(width: 5),
                    Text(
                      "sat,19 Apr at 10:00 AM IST",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Class", style: TextStyle(fontSize: 20)),
                        SizedBox(height: 2),
                        Text(
                          "Start in",
                          style: TextStyle(fontSize: 16, color: PRIMARY_COLOR),
                        ),
                      ],
                    ),
                    SizedBox(width: 4),
                    VerticalDivider(color: PRIMARY_COLOR, thickness: 2),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("12", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 2),
                        Text(
                          "hour",
                          style: TextStyle(fontSize: 14, color: PRIMARY_COLOR),
                        ),
                      ],
                    ),
                    SizedBox(width: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("42", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 2),
                        Text(
                          "min",
                          style: TextStyle(fontSize: 14, color: PRIMARY_COLOR),
                        ),
                      ],
                    ),
                    SizedBox(width: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("39", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 2),
                        Text(
                          "sec",
                          style: TextStyle(fontSize: 14, color: PRIMARY_COLOR),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 33,
                    width: 150,
                    decoration: BoxDecoration(
                      color: PRIMARY_COLOR,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Register Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
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
