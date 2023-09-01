import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudyCourses extends StatelessWidget {
  const StudyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: secondColor,
        height: 500.h,
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  "Why Choose Eduvice?",
                  style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54
                      // Adjust the font size as needed
                      ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationX(
                        0), // Rotate the mirrored text 180 degrees
                    child: Text(
                      "Why choose eduvice?",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        // Adjust the font size as needed
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Container(
                  height: 4.h,
                  width: 50.w,
                  // margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  color: secondColor,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      "View All",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 3.h,
                      width: 20.w,
                      color: Colors.black,
                    )
                  ],
                ),
                SizedBox(
                  width: 30.w,
                )
                // Icon(
                //   Icons.keyboard_arrow_left_outlined,
                //   size: 38,
                // ),
                // SizedBox(
                //   width: 10.w,
                // ),
                // Icon(
                //   Icons.keyboard_arrow_right_outlined,
                //   size: 38,
                // ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Text(
                  "Learn about & choose from the best globally recognized courses at the world's top universities",
                  style: TextStyle(
                      fontFamily: "Work Sans",
                      fontSize: 18.sp,
                      color: Colors.white),
                ),
              ],
            ),
            courses(),

            Expanded(
              child: Container(
                color: colors,
              ),
            )

            // SizedBox(
            //   height: 5.h,
            // ),

            // carouselEffect(context),
            // gap()
          ],
        ));
  }

  Widget courses() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 200.h,
        width: 300.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
