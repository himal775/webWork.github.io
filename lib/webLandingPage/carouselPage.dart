import 'package:carousel_slider/carousel_slider.dart';
import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';

class CarouselStart extends StatefulWidget {
  const CarouselStart({super.key});

  @override
  State<CarouselStart> createState() => _CarouselStartState();
}

class _CarouselStartState extends State<CarouselStart> {
  final List<String> texts = [
    """ Our team of experienced counselors and educational experts are committed to offering personalized guidance.
           We help students make informed decisions based on their academic aspirations and career goals.""",
    """With an extensive network of reputable universities worldwide, we assist students in finding the 
                       perfect match for their academic pursuits.""",
    """"      Understanding the financial aspect of studying abroad is crucial.
    We provide transparent information about tuition fees and other related expenses to ensure financial clarity.""",
    """Securing suitable accommodation in a foreign land can be challenging.
     At Eduvice, we help students find safe and comfortable living arrangements that suit their preferences and budget""",
    """Navigating through visa requirements can be overwhelming. 
     Our visa experts streamline the application process, making it hassle-free for students"""
  ];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      // shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: 10,
        ),
        CarouselSlider(
            items: texts.map((item) {
              return InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    texts[_current],
                    style: TextStyle(
                        fontSize: 28, color: colors, fontFamily: "Work Sans"),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                autoPlay: true,
                scrollDirection: Axis.horizontal,
                height: 180,
                autoPlayInterval: const Duration(seconds: 3),
                viewportFraction: 1)),
      ],
    );
  }
}
