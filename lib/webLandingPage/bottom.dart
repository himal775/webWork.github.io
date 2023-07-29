import 'package:eduvice/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      color: colors,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 100.h,
                width: 50.w,
                child: Image.asset(
                  "assets/eduviceIcon.jpg",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            EvaIcons.facebook,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(EvaIcons.twitter, color: Colors.white)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        EvaIcons.google,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        EvaIcons.linkedin,
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50.w,
                child: Text(
                  "Menu",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      fontFamily: "Work Sans"),
                ),
              ),
              Container(
                  width: 50.w,
                  child: Text(
                    "Scholarship",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Coach",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Counsellor",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Universities",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Courses",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Accomodation",
                    style: TextStyle(color: secondColor),
                  ))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50.w,
                child: Text(
                  "Courses",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      fontFamily: "Work Sans"),
                ),
              ),
              Container(
                  width: 50.w,
                  child: Text(
                    "Maths",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Science",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Physics",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Biology",
                    style: TextStyle(color: secondColor),
                  )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50.w,
                child: Text(
                  "Topics",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      fontFamily: "Work Sans"),
                ),
              ),
              Container(
                  width: 50.w,
                  child: Text(
                    "Student Code",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Disclosers",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Job Opportunities",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Universities",
                    style: TextStyle(color: secondColor),
                  )),
              Container(
                  width: 50.w,
                  child: Text(
                    "Safety",
                    style: TextStyle(color: secondColor),
                  )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 50.w,
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      fontFamily: "Work Sans"),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 50.w,
                      child: Text(
                        "7303718877,9953168800",
                        style: TextStyle(color: secondColor),
                      ))
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 50.w,
                      child: Text(
                        "info@eduvice.co.uk",
                        style: TextStyle(color: secondColor),
                      ))
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.web,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 50.w,
                      child: Text(
                        "eduvice.co.uk",
                        style: TextStyle(color: secondColor),
                      ))
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 50.w,
                      child: Text(
                        "747, 1st floor, sector- 15A, Faridabad ",
                        style: TextStyle(color: secondColor),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
