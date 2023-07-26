import 'package:eduvice/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 150.h,
                width: 150.w,
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
                            color: colors,
                          )),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(EvaIcons.twitter, color: colors)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        EvaIcons.google,
                        color: colors,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        EvaIcons.linkedin,
                        color: colors,
                      )),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 100.w,
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                      color: colors,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      fontFamily: "Work Sans"),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: colors,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 100.w,
                      child: Text(
                        "+447880223215",
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
                  Icon(
                    Icons.email,
                    color: colors,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 100.w,
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
                  Icon(
                    Icons.web,
                    color: colors,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 100.w,
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
                  Icon(
                    Icons.location_pin,
                    color: colors,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      width: 100.w,
                      child: Text(
                        "5 Brayford Square London E1 OSG",
                        style: TextStyle(color: secondColor),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
