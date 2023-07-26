import 'package:eduvice/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          color: secondColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 7.5.w,
                    ),
                    const Text(
                      "+9779862243661",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    ),
                    SizedBox(
                      width: 7.5.w,
                    ),
                    const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Color.fromARGB(255, 47, 163, 51),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      "whatsapp us",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    ),
                  ]),
                ),
                Row(
                  children: [
                    Container(
                      height: 7.5.w,
                      width: 70.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8.0),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search university or courses",
                              hintStyle: TextStyle(
                                  fontFamily: "Work Sans", fontSize: 16.sp)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 25.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: secondColor,
                                    fontFamily: "Work Sans"),
                              ),
                            ),
                          ),
                          SizedBox(width: 1.w),
                          Container(
                            height: 25.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: secondColor,
                                    fontFamily: "Work Sans"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 120.h,
          width: double.infinity,
          decoration:
              BoxDecoration(gradient: LinearGradient(colors: [colors, colrs])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                child: Image.asset("assets/eduviceIcon.jpg"),
              ),
              Container(
                height: 50.h,
                width: 150.w,
                color: colors,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    ),
                    Text(
                      "Country",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    ),
                    Text(
                      "University",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    ),
                    Text(
                      "Course",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    ),
                    Text(
                      "About Us",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
