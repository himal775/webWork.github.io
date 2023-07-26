import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestimonialPage extends StatelessWidget {
  TestimonialPage({super.key});
  final image1 = Image.asset("country/testimony4.jpg");

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: double.infinity,
      color: Colors.white70,
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TESTIMONIALS",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 28.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Our Students' Journey to Success",
                style: TextStyle(fontSize: 22.sp, color: Colors.black87),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  // boxShadow: [
                  //   BoxShadow(
                  //       blurRadius: 0.5, spreadRadius: 0.5, color: Colors.grey)
                  // ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'country/testimony3.jpg',
                        width: 40.w,
                        height: 150.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Mr. Himal Neupane",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: colors),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Their team not only helped me find the perfect university but also assisted me with test preparation and improving my language skills",
                        style: TextStyle(fontFamily: "Work Sans"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 300.h,
                width: 100.w,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      // BoxShadow(
                      //     blurRadius: 1, spreadRadius: 1, color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'country/testimony3.jpg',
                        width: 40.w,
                        height: 150.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Mr. Nabin Tandukar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: colors),
                    ),
                    Text(
                      "Senior Counselor",
                      style: TextStyle(fontSize: 18, color: colors),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "'Helping students achieve their study abroad dreams at Eduvice is incredibly rewarding. Guiding them through this life-changing journey is an honor, and witnessing their growth and success abroad is truly inspiring'",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontWeight: FontWeight.w100),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 300.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    // BoxShadow(
                    //     blurRadius: 1, spreadRadius: 1, color: Colors.grey)
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'country/testimony3.jpg',
                        width: 40.w,
                        height: 150.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Mr. Himal Neupane",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: colors),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Eduvice made my study abroad dreams a reality! Their personalized approach and attention to detail ensured I found the ideal university that perfectly matched my aspirations. I'm forever grateful for their unwavering support throughout the entire journey.",
                        style: TextStyle(fontFamily: "Work Sans"),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
