import 'package:eduvice/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobScholarship extends StatelessWidget {
  const MobScholarship({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [colors, Color.fromARGB(255, 51, 46, 86)]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Searching for Scholarship?",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontSize: 14.sp,
                    color: Colors.white),
              ),
              Text(
                "We Provide you",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Famous Scholarship ",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "across the world",
                style: TextStyle(
                  fontFamily: "Work Sans",
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Container(
            height: 40.h,
            width: 50.w,
            decoration: BoxDecoration(
                color: secondColor,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const Center(child: Text("Explore it")),
          )
        ],
      ),
    );
  }
}
