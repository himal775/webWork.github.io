import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobTestimonialPage extends StatelessWidget {
  MobTestimonialPage({super.key});
  final image1 = Image.asset("assets/testimony4.jpg");

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500.h,
      // width: double.infinity,
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
                  fontSize: 24.sp,
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
                style: TextStyle(fontSize: 18.sp, color: Colors.black87),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 400.h,
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
                        'assets/sumanPokharel.jpeg',
                        width: 80.w,
                        height: 150.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Mr. Suman Pokharel",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: colors),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 170.h,
                        width: double.infinity,
                        child: const Text(
                          "Their team not only helped me find the perfect university but also assisted me with test preparation and improving my language skills",
                          style: TextStyle(fontFamily: "Work Sans"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 400.h,
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
                        'assets/testimony3.jpg',
                        width: 90.w,
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
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 170.h,
                        width: double.infinity,
                        child: const Text(
                          "'Helping students achieve their study abroad dreams at Eduvice is incredibly rewarding. Guiding them through this life-changing journey is an honor, and witnessing their growth and success abroad is truly inspiring'",
                          style: TextStyle(
                              fontFamily: "Work Sans",
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 400.h,
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
                        'assets/testimony2.jpg',
                        width: 90.w,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 170.h,
                        width: double.infinity,
                        child: const Text(
                          "Eduvice made my study abroad dreams a reality! Their personalized approach and attention to detail ensured I found the ideal university that perfectly matched my aspirations. I'm forever grateful for their unwavering support throughout the entire journey.",
                          style: TextStyle(fontFamily: "Work Sans"),
                        ),
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
