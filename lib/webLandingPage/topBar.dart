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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "info@eduvice.co.uk",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: "Work Sans"),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "+44 7436 966618",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: "Work Sans"),
                    ),
                  ]),
                ),
                Container(
                  width: 50.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              EvaIcons.facebook,
                              size: 25.sp,
                              color: Colors.white,
                            )),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(EvaIcons.twitter,
                              size: 25.sp, color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            EvaIcons.google,
                            size: 25.sp,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            EvaIcons.linkedin,
                            size: 25.sp,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                // Row(
                //   children: [

                //     // Container(
                //     //   height: 7.5.w,
                //     //   width: 70.w,
                //     //   decoration: BoxDecoration(
                //     //       color: Colors.white,
                //     //       borderRadius: BorderRadius.circular(20)),
                //     //   child: Center(
                //     //     child: TextFormField(
                //     //       decoration: InputDecoration(
                //     //           contentPadding: EdgeInsets.all(8.0),
                //     //           border: InputBorder.none,
                //     //           prefixIcon: Icon(Icons.search),
                //     //           hintText: "Search university or courses",
                //     //           hintStyle: TextStyle(
                //     //               fontFamily: "Work Sans", fontSize: 16.sp)),
                //     //     ),
                //     //   ),
                //     // ),
                //     SizedBox(
                //       width: 10.w,
                //     ),
                //     // Container(
                //     //   child: Row(
                //     //     children: [
                //     //       Container(
                //     //         height: 25.h,
                //     //         width: 25.w,
                //     //         decoration: BoxDecoration(
                //     //             color: Colors.white,
                //     //             borderRadius: BorderRadius.circular(5)),
                //     //         child: Center(
                //     //           child: Text(
                //     //             "SignUp",
                //     //             style: TextStyle(
                //     //                 fontSize: 14.sp,
                //     //                 color: secondColor,
                //     //                 fontFamily: "Work Sans"),
                //     //           ),
                //     //         ),
                //     //       ),
                //     //       SizedBox(width: 1.w),
                //     //       Container(
                //     //         height: 25.h,
                //     //         width: 25.w,
                //     //         decoration: BoxDecoration(
                //     //             color: Colors.white,
                //     //             borderRadius: BorderRadius.circular(5)),
                //     //         child: Center(
                //     //           child: Text(
                //     //             "Sign in",
                //     //             style: TextStyle(
                //     //                 fontSize: 14.sp,
                //     //                 color: secondColor,
                //     //                 fontFamily: "Work Sans"),
                //     //           ),
                //     //         ),
                //     //       )
                //     //     ],
                //     //   ),
                //     // ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        Container(
          height: 100.h,
          width: double.infinity,
          color: colors,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 90.h,
                width: 90.w,
                child: Image.asset("assets/eduviceIcon.jpg"),
              ),
              Container(
                height: 50.h,
                width: 190.w,
                color: colors,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Work Sans"),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Study Abroad",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Work Sans"),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Services",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Work Sans"),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular Course",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Work Sans"),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Text(
                      "Blog",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    ),

                    Text(
                      "Contact Us",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "Work Sans"),
                    ),

                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: colors,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 1,
                                spreadRadius: 1)
                          ],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontFamily: "Work Sans"),
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 25.h,
                    //   width: 25.w,
                    //   decoration: BoxDecoration(
                    //       color: colors,
                    //       boxShadow: const [
                    //         BoxShadow(
                    //             color: Colors.white,
                    //             blurRadius: 1,
                    //             spreadRadius: 1)
                    //       ],
                    //       borderRadius: BorderRadius.circular(5)),
                    //   child: Center(
                    //     child: Text(
                    //       "Register",
                    //       style: TextStyle(
                    //           fontSize: 14.sp,
                    //           color: Colors.white,
                    //           fontFamily: "Work Sans"),
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   child: Row(
                    //     children: [
                    //       Container(
                    //         height: 25.h,
                    //         width: 25.w,
                    //         decoration: BoxDecoration(
                    //             color: Colors.white,
                    //             borderRadius: BorderRadius.circular(5)),
                    //         child: Center(
                    //           child: Text(
                    //             "SignUp",
                    //             style: TextStyle(
                    //                 fontSize: 14.sp,
                    //                 color: secondColor,
                    //                 fontFamily: "Work Sans"),
                    //           ),
                    //         ),
                    //       ),
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
