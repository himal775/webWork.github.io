import 'package:eduvice/constant.dart';
import 'package:eduvice/mobLandingPage/mobBottomPage.dart';
import 'package:eduvice/mobLandingPage/mobCounsellingPage.dart';
import 'package:eduvice/mobLandingPage/mobGetInTouch.dart';
import 'package:eduvice/mobLandingPage/mobPopularDestination.dart';
import 'package:eduvice/mobLandingPage/mobScholarship.dart';
import 'package:eduvice/mobLandingPage/mobService.dart';
import 'package:eduvice/mobLandingPage/mobTestimonial.dart';
import 'package:eduvice/mobLandingPage/mobTrusted.dart';
import 'package:eduvice/webLandingPage/TestimonialPage.dart';
import 'package:eduvice/webLandingPage/bottom.dart';
import 'package:eduvice/webLandingPage/counselling.dart';
import 'package:eduvice/webLandingPage/getInTouch.dart';
import 'package:eduvice/webLandingPage/getOnPlayStore.dart';
import 'package:eduvice/webLandingPage/ourService.dart';
import 'package:eduvice/webLandingPage/popularDestination.dart';
import 'package:eduvice/webLandingPage/scholarship.dart';
import 'package:eduvice/webLandingPage/summaryPage.dart';
import 'package:eduvice/webLandingPage/trusted.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobLandingPage extends StatelessWidget {
  const MobLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: colors,
        flexibleSpace: Container(
          height: 100.h,
          child: Image.asset("eduviceIcon.jpg"),
        ),
      ),
      body: ListView(
        children: [
          mobTopBar(context),
          SummaryPage(),
          MobPopularDestinations(),
          MobCounsellingPage(),
          MobService(),
          MobTrusted(),
          MobGetInTouch(),
          MobScholarship(),
          Expanded(flex: 1, child: MobTestimonialPage()),
          Playstore(),
          MobBottomPage(),
        ],
      ),
    );
  }
}

Widget mobTopBar(context) {
  return Container(
    height: 100.h,
    color: secondColor,
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        height: 5.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.mail,
            color: Colors.white,
          ),
          SizedBox(
            width: 2.h,
          ),
          Text(
            "info@eduvice.co.in",
            style: TextStyle(
                fontSize: 15.sp, color: Colors.white, fontFamily: "Work Sans"),
          ),
        ],
      ),
      SizedBox(
        height: 4.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                fontSize: 15.sp, color: Colors.white, fontFamily: "Work Sans"),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.facebook,
                size: 18.sp,
                color: Colors.white,
              )),
          SizedBox(
            width: 2.w,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(EvaIcons.twitter, size: 22.sp, color: Colors.white)),
          SizedBox(
            width: 2.w,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.google,
                size: 18.sp,
                color: Colors.white,
              )),
          SizedBox(
            width: 2.w,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.linkedin,
                size: 18.sp,
                color: Colors.white,
              )),
        ],
      ),
    ]),
  );
}
