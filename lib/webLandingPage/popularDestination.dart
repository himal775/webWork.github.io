import 'package:carousel_slider/carousel_slider.dart';
import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDestinations extends StatefulWidget {
  const PopularDestinations({super.key});

  @override
  State<PopularDestinations> createState() => _PopularDestinationsState();
}

class _PopularDestinationsState extends State<PopularDestinations> {
  @override
  List<String> countries = [
    'United States of America',
    'Australia',
    'Canada',
    'United Kingdom',
  ];
  List<String> images = [
    'assets/newyork.jpg',
    'assets/australia.jpeg',
    'assets/canada.jpg',
    'assets/UK.jpeg'
  ];
  List<String> aboutCountry = [
    "The US is home to the highest number of international students in the world. With famous cities, epic landscapes, high-ranked universities and vibrant exciting campus life, studying in the US offers the perfect blend of educational quality and cultural experience",
    "Whether you choose to undertake an MBA, engineering degree, humanities or English language course, Australia is difficult to beat in terms of standard of living, academic excellence, and support for international students",
    "Academic excellence, affordability and adventure – Canada stands out as an ideal place to study.",
    "Home to some of the world’s greatest cities, the United Kingdom offers world-class education with a diverse and flexible range of courses. Besides, it is one of the most popular cultural hubs of Europe with a rich history to be proud of."
  ];
  int currentInt = 0;
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 800.h,
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
                    "Trending Universities",
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
                        "Trending Universities",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: secondColor,
                          // Adjust the font size as needed
                        ),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 4,
                    width: 50.w,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: secondColor,
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
                        "Get enrollment to your preferred university abroad. Learn about all the prestigious universities around the world. Study hard, fly high.",
                        style:
                            TextStyle(fontSize: 16.sp, color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              universities()
              // carouselEffect(context)
            ],
          ),
        ));
  }

  Widget universities() {
    return Container(
      height: 550.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // physics: NeverScrollableScrollPhysics(),
        // primary: false,
        // padding: const EdgeInsets.all(20),
        // crossAxisCount: 3,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100.w,
                  height: 200.h,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset(
                    "assets/UK.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100.w,
                  height: 200.h,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset(
                    "assets/australia.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100.w,
                  height: 200.h,
                  child: Image.asset(
                    "assets/newyork.jpg",
                    fit: BoxFit.cover,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100.w,
                  height: 200.h,
                  child: Image.asset(
                    "assets/canada.jpg",
                    fit: BoxFit.cover,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100.w,
                  height: 200.h,
                  child: Image.asset(
                    "assets/newzealand.jpeg",
                    fit: BoxFit.cover,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100.w,
                  height: 200.h,
                  child: Image.asset(
                    "assets/france.jpeg",
                    fit: BoxFit.cover,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  // Widget carouselEffect(context) {
  //   return CarouselSlider(
  //       items: countries.map((item) {
  //         return InkWell(
  //           onTap: () {},
  //           child: Container(
  //             height: 400.h,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
  //                     Container(
  //                         height: 250.h,
  //                         width: 200.w,
  //                         child: Image.asset(
  //                           images[currentInt],
  //                           fit: BoxFit.fitWidth,
  //                         )),
  //                     Container(
  //                       width: 150.w,
  //                       child: Column(
  //                         children: [
  //                           Text(
  //                             "Study in ${countries[currentInt]}",
  //                             style: TextStyle(
  //                                 fontSize: 28.sp,
  //                                 color: colors,
  //                                 fontFamily: "Work Sans"),
  //                             textAlign: TextAlign.center,
  //                           ),
  //                           SizedBox(
  //                             height: 10.h,
  //                           ),
  //                           Text("""${aboutCountry[currentInt]}""")
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       }).toList(),
  //       options: CarouselOptions(
  //           onPageChanged: (index, reason) {
  //             setState(() {
  //               currentInt = index;
  //             });
  //           },
  //           aspectRatio: 2.0,
  //           enlargeCenterPage: true,
  //           autoPlay: true,
  //           scrollDirection: Axis.horizontal,
  //           height: 260.h,
  //           autoPlayInterval: const Duration(seconds: 3),
  //           viewportFraction: 1));
  // }
}
