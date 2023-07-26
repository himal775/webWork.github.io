import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Playstore extends StatelessWidget {
  const Playstore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: double.infinity,
      color: colors,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "In All Platform",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Work Sans",
                        fontSize: 22.sp),
                  ),
                ),
                Text(
                  "Discover a universe of possibilities ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Work Sans",
                      fontSize: 28.sp),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100.w,
                    child: Text(
                      "Download from the mobile store and unlock a plethora of apps tailor-made for your Android device.",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          color: Colors.white,
                          fontSize: 18.sp),
                    ),
                  ),
                ),
                Container(
                  height: 100.h,
                  width: 150.w,
                  child: Image.asset(
                    "country/bothplayandappstore.png",
                    fit: BoxFit.contain,
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
              child: const Center(child: Text("Get Link")),
            )
          ],
        ),
      ),
    );
  }
}
