import 'package:carousel_slider/carousel_slider.dart';
import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurService extends StatefulWidget {
  const OurService({super.key});

  @override
  State<OurService> createState() => _OurServiceState();
}

class _OurServiceState extends State<OurService> {
  //  List<String> countries = [
  //   'United States of America',
  //   'Australia',
  //   'Canada',
  //   'United Kingdom',
  // ];
  List<String> images = [
    'assets/trustedby.jpeg',
    'assets/gettouch.jpg',
    'assets/testimony2.jpg',
  ];
  List<String> imagess = [
    'assets/gettouch.jpg',
    'assets/testimony2.jpg',
    'assets/trustedby.jpeg',
  ];
  int indexx = 0;
  // List<String> aboutCountry = [
  //   "The US is home to the highest number of international students in the world. With famous cities, epic landscapes, high-ranked universities and vibrant exciting campus life, studying in the US offers the perfect blend of educational quality and cultural experience",
  //   "Whether you choose to undertake an MBA, engineering degree, humanities or English language course, Australia is difficult to beat in terms of standard of living, academic excellence, and support for international students",
  //   "Academic excellence, affordability and adventure – Canada stands out as an ideal place to study.",
  //   "Home to some of the world’s greatest cities, the United Kingdom offers world-class education with a diverse and flexible range of courses. Besides, it is one of the most popular cultural hubs of Europe with a rich history to be proud of."
  // ];

  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 650.h,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Scholarships & offers",
                    style: TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade50
                        // Adjust the font size as needed
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationX(
                          0), // Rotate the mirrored text 180 degrees
                      child: Text(
                        "Scholarships & Offers",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: secondColor,
                          // Adjust the font size as needed
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    height: 4.h,
                    width: 50.w,
                    // margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    color: secondColor,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.keyboard_arrow_left_outlined,
                    size: 38,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 38,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 30.h,
                      child: Text(
                        "Discover how we achieve upto 100% Fee Scholarships to the best international universities for our students. Learn their stories.",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black87,
                            fontFamily: "Work Sans"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              carouselEffect(context),
              gap()
            ],
          ),
        ));
  }

  Widget carouselEffect(context) {
    return CarouselSlider(
        items: images.map((item) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200.h,
                width: 100.w,
                color: Colors.red,
                child: Image.asset(images[indexx], fit: BoxFit.cover),
              ),
              Container(
                  height: 200.h,
                  width: 100.w,
                  color: Colors.red,
                  child: Image.asset(imagess[indexx], fit: BoxFit.cover)),
              Container(
                  height: 200.h,
                  width: 100.w,
                  color: Colors.red,
                  child: Image.asset(
                    images[indexx],
                    fit: BoxFit.cover,
                  ))
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

  Widget gap() {
    return Container(
      height: 150.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: secondColor,
            width: 50.w,
            height: 3.h,
          ),
          SizedBox(
            width: 5.w,
          ),
          Container(
            height: 120.h,
            child: Image.asset(
              "assets/eduviceIconPiece.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Container(
            color: secondColor,
            width: 50.w,
            height: 3.h,
          ),
        ],
      ),
    );
  }
}
