import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Trusted extends StatelessWidget {
  const Trusted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 700.h,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Our Counsellor & coach",
                    style: TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade50
                        // Adjust the font size as needed
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationX(
                          0), // Rotate the mirrored text 180 degrees
                      child: Text(
                        "Our Counsellor & Coach",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: secondColor,
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
                    width: 20.w,
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
                  Icon(
                    Icons.keyboard_arrow_left_outlined,
                    size: 38,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 38,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 30.h,
                      child: Text(
                        "Guiding You Towards Success: A Counselor and Coach's Journey",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black87,
                            fontFamily: "Work Sans"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              coaches()
              // carouselEffect(context),
              // gap()
            ],
          ),
        ));
  }

  Widget coaches() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Container(
              height: 200.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1, color: secondColor, spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Palwinder Singh",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Coach",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "MBA (University of Worcester) B Tech Mechanical",
                    style: TextStyle(
                      fontFamily: "Work Sans",
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Positioned.fill(
              // bottom: 2,
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Container(
              height: 200.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1, color: secondColor, spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Palwinder Singh",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Coach",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "MBA (University of Worcester) B Tech Mechanical",
                    style: TextStyle(
                      fontFamily: "Work Sans",
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
            ),
            Positioned.fill(
              // bottom: 2,
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Container(
              height: 200.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1, color: secondColor, spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Palwinder Singh",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Coach",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "MBA (University of Worcester) B Tech Mechanical",
                    style: TextStyle(
                      fontFamily: "Work Sans",
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
            ),
            Positioned.fill(
              // bottom: 2,
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
