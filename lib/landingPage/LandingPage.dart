import 'package:eduvice/constant.dart';
import 'package:eduvice/landingPage/TestimonialPage.dart';
import 'package:eduvice/landingPage/bottom.dart';
import 'package:eduvice/landingPage/counselling.dart';
import 'package:eduvice/landingPage/getInTouch.dart';
import 'package:eduvice/landingPage/getOnPlayStore.dart';
import 'package:eduvice/landingPage/ourService.dart';
import 'package:eduvice/landingPage/popularDestination.dart';
import 'package:eduvice/landingPage/scholarship.dart';
import 'package:eduvice/landingPage/summaryPage.dart';
import 'package:eduvice/landingPage/topBar.dart';
import 'package:eduvice/landingPage/trusted.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          TopBar(),
          SummaryPage(),
          PopularDestinations(),
          CounsellingPage(),
          OurService(),
          Trusted(),
          Scholarship(),
          GetInTouch(),
          TestimonialPage(),
          Playstore(),
          BottomPage(),
        ],
      ),
    );
  }
}
