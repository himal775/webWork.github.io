import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhyEduvice extends StatefulWidget {
  const WhyEduvice({super.key});

  @override
  State<WhyEduvice> createState() => _WhyEduviceState();
}

class _WhyEduviceState extends State<WhyEduvice> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 600.h,
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
                    "Why Choose Eduvice?",
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

              // SizedBox(
              //   height: 5.h,
              // ),
              body()
              // carouselEffect(context),
              // gap()
            ],
          ),
        ));
  }

  Widget body() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150.w,
              height: 300.h,
              child: Text(
                """ Eduvice is the ultimate partner for students aspiring to study abroad, and here's why you should choose them for your educational journey. With a wealth of experience and a deep commitment to helping students achieve their dreams, Eduvice stands out as a trusted consultancy. They possess an extensive network of top universities and colleges worldwide, ensuring that you have access to a diverse range of educational opportunities tailored to your interests and career goals.

What sets Eduvice apart is their personalized approach. They understand that every student is unique, and they take the time to listen to your aspirations, academic background, and financial constraints. This allows them to provide tailored guidance and assistance at every step of the application process, from selecting the right institution to securing scholarships and navigating visa requirements.""",
                style: TextStyle(fontFamily: "Work Sans", fontSize: 16.sp),
              ),
            ),
            Container(
              height: 250.h,
              width: 100.w,
              child: Image.asset(
                "assets/gettouch.jpg",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 25.h,
                    width: 10.w,
                    color: Colors.black45,
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 25.h,
                    width: 10.w,
                    color: Colors.black45,
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 30.w,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: secondColor,
                    radius: 5.r,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 5.r,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: secondColor,
                    radius: 5.r,
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
