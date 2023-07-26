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
      height: 500.h,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 500.h,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.black38, Colors.black45])),
            child: Image.asset(
              "country/trustedby.jpeg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Trusted By Over 6000+ Students",
                style: TextStyle(
                    fontFamily: "Work Sans",
                    fontSize: 38.sp,
                    color: Colors.white),
              ),
              Center(
                child: Text(
                  "We have a fully qualified teaching staff, continuous student counseling, and enthusiastic student support staff.",
                  style: TextStyle(
                      fontFamily: "Work Sans",
                      fontSize: 22.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 50.h,
                width: 60.w,
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Center(child: Text("Learn more")),
              )
            ],
          )
        ],
      ),
    );
  }
}
