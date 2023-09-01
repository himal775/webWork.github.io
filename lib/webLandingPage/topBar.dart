import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      // color: colors,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 90.h,
            width: 90.w,
            child: Image.asset("assets/eduviceIcon.png"),
          ),
          Container(
            height: 50.h,
            width: 190.w,
            // color: colors,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: secondColor,
                      fontFamily: "Work Sans"),
                ),
                Text(
                  "Universities",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontFamily: "Work Sans"),
                ),
                Text(
                  "Courses",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontFamily: "Work Sans"),
                ),
                Text(
                  "Services",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontFamily: "Work Sans"),
                ),
                Text(
                  "Discussions",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontFamily: "Work Sans"),
                ),
                Container(
                  height: 25.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      color: secondColor,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white, blurRadius: 1, spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontFamily: "Work Sans"),
                    ),
                  ),
                ),
                Container(
                  height: 25.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      color: colors,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white, blurRadius: 1, spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontFamily: "Work Sans"),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
