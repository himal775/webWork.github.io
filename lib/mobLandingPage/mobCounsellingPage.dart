import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobCounsellingPage extends StatefulWidget {
  const MobCounsellingPage({super.key});

  @override
  State<MobCounsellingPage> createState() => _MobCounsellingPageState();
}

class _MobCounsellingPageState extends State<MobCounsellingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [colors, Color.fromARGB(255, 51, 46, 86)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HAVE ANY QUERIES?",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontSize: 18.sp,
                    color: Colors.white),
              ),
              Text(
                "Schedule a free",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontSize: 22.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Online Counselling Session",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontSize: 26.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "with our study abroad experts",
                style: TextStyle(
                  fontFamily: "Work Sans",
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Container(
            height: 40.h,
            width: 100.w,
            decoration: BoxDecoration(
                color: secondColor,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const Center(
                child: Text(
              "Book a Meeting Now",
              style: TextStyle(color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
