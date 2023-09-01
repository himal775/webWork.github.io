import 'package:eduvice/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopAppBar extends StatefulWidget {
  const TopAppBar({super.key});

  @override
  State<TopAppBar> createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          color: secondColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "info@eduvice.co.in",
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
                      "9953168800",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: "Work Sans"),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: secondColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              // blurRadius: ,
                            )
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: "  Search Universities"),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
        // Container(
        //   height: 100.h,
        //   width: double.infinity,
        //   color: colors,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Container(
        //         height: 90.h,
        //         width: 90.w,
        //         child: Image.asset("assets/eduviceIcon.jpg"),
        //       ),
        //       Container(
        //         height: 50.h,
        //         width: 190.w,
        //         color: colors,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             Row(
        //               children: const [
        //                 Text(
        //                   "About Us",
        //                   style: TextStyle(
        //                       color: Colors.white, fontFamily: "Work Sans"),
        //                 ),
        //                 Icon(
        //                   Icons.arrow_drop_down,
        //                   color: Colors.white,
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: const [
        //                 Text(
        //                   "Study Abroad",
        //                   style: TextStyle(
        //                       color: Colors.white, fontFamily: "Work Sans"),
        //                 ),
        //                 Icon(
        //                   Icons.arrow_drop_down,
        //                   color: Colors.white,
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: const [
        //                 Text(
        //                   "Services",
        //                   style: TextStyle(
        //                       color: Colors.white, fontFamily: "Work Sans"),
        //                 ),
        //                 Icon(
        //                   Icons.arrow_drop_down,
        //                   color: Colors.white,
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: const [
        //                 Text(
        //                   "Popular Course",
        //                   style: TextStyle(
        //                       color: Colors.white, fontFamily: "Work Sans"),
        //                 ),
        //                 Icon(
        //                   Icons.arrow_drop_down,
        //                   color: Colors.white,
        //                 )
        //               ],
        //             ),
        //             const Text(
        //               "Blog",
        //               style: TextStyle(
        //                   color: Colors.white, fontFamily: "Work Sans"),
        //             ),
        //             const Text(
        //               "Contact Us",
        //               style: TextStyle(
        //                   color: Colors.white, fontFamily: "Work Sans"),
        //             ),
        //             Container(
        //               height: 20.h,
        //               width: 20.w,
        //               decoration: BoxDecoration(
        //                   color: colors,
        //                   boxShadow: const [
        //                     BoxShadow(
        //                         color: Colors.white,
        //                         blurRadius: 1,
        //                         spreadRadius: 1)
        //                   ],
        //                   borderRadius: BorderRadius.circular(5)),
        //               child: Center(
        //                 child: Text(
        //                   "Login",
        //                   style: TextStyle(
        //                       fontSize: 14.sp,
        //                       color: Colors.white,
        //                       fontFamily: "Work Sans"),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
