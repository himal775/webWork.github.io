import 'package:eduvice/constant.dart';
import 'package:eduvice/webLandingPage/TestimonialPage.dart';
import 'package:eduvice/webLandingPage/bottom.dart';
import 'package:eduvice/webLandingPage/counselling.dart';
import 'package:eduvice/webLandingPage/getInTouch.dart';
import 'package:eduvice/webLandingPage/getOnPlayStore.dart';
import 'package:eduvice/webLandingPage/ourService.dart';
import 'package:eduvice/webLandingPage/popularDestination.dart';
import 'package:eduvice/webLandingPage/scholarship.dart';
import 'package:eduvice/webLandingPage/summaryPage.dart';
import 'package:eduvice/webLandingPage/topBar.dart';
import 'package:eduvice/webLandingPage/trusted.dart';
import 'package:flutter/material.dart';

class webLandingPage extends StatefulWidget {
  const webLandingPage({super.key});

  @override
  State<webLandingPage> createState() => _webLandingPageState();
}

class _webLandingPageState extends State<webLandingPage> {
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
          GetInTouch(),
          Scholarship(),
          TestimonialPage(),
          Playstore(),
          BottomPage(),
        ],
      ),
    );
  }
}
