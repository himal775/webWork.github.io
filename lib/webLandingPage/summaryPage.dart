import 'package:carousel_slider/carousel_slider.dart';
import 'package:eduvice/constant.dart';
import 'package:eduvice/webLandingPage/topBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryPage extends StatefulWidget {
  SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  List<String> title = ["WELCOME TO", "WHAT WE OFFER"];

  List<String> body = [
    "Free UK university advice for international students who wish to study in the UK. We help them to Search for  courses and apply for the specific university",
    "100% free career counselling  and admission processing. University Admission . Language Classes. Visa Assistance",
  ];
  List<String> topic = ["EDUVICE", "Professional Advice"];
  int indexx = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 640.h,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue.shade500,
            // const Color(0x00000000),
            // const Color(0x00000000),
            Colors.blue.shade500,
          ])),
          child: Image.asset(
            "assets/eduviceHomePage.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 640.h,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.black45,
              // const Color(0x00000000),
              // const Color(0x00000000),
              Colors.black45,
            ],
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              TopBar(),
              SizedBox(
                height: 80.h,
              ),
              // SizedBox(
              //   width: 50.w,
              // ),
              carouselEffect(context),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Read more",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Work Sans",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget carouselEffect(context) {
    return CarouselSlider(
        items: title.map((item) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    title[indexx],
                    style: TextStyle(
                        color: secondColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                        fontFamily: "Work Sans"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                        topic[indexx],
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: secondColor,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: indexx == 0 ? 82.sp : 62.sp,
                            fontFamily: "Work Sans"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 170.w,
                      child: Text(
                        body[indexx],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: "Work Sans"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        }).toList(),
        options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                indexx = index;
              });
            },
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            autoPlay: true,
            scrollDirection: Axis.horizontal,
            height: 260.h,
            autoPlayInterval: const Duration(seconds: 5),
            viewportFraction: 1));
  }
}
