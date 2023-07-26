import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 550.h,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue.withOpacity(0)])),
          child: Image.asset(
            "eduviceHomePage.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 550.h,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [colors, Colors.blue.withOpacity(0)])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Grab an",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 42.sp,
                        fontFamily: "Work Sans"),
                  ),
                  Text(
                    "Opportunity to",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 42.sp,
                        fontFamily: "Work Sans"),
                  ),
                  Text(
                    "Secure your Future",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 42.sp,
                        fontFamily: "Work Sans"),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "50 +",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Work Sans",
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Country",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Work Sans",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "900 +",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Work Sans",
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Universites",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Work Sans",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "15,000 +",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Work Sans",
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Courses",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Work Sans",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Container(
                    height: 40.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        color: secondColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        "Discover",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
