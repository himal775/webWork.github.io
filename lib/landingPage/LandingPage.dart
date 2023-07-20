import 'dart:async';

import 'package:eduvice/constant.dart';
import 'package:eduvice/landingPage/carouselPage.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Timer? _timer;
  final targetDate = DateTime.now().add(Duration(days: 7));
  Duration _countdownDuration = Duration.zero;
  String seconds = "0";
  String minutes = "0";
  String hours = "0";
  String days = "0";

  @override
  void initState() {
    super.initState();

    _startTimer();
  }

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   super.dispose();
  // }

  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        //   seconds<=0?seconds=59:seconds-1;
        //   seconds==0?minutes=59:minutes=minutes-1;
        //   minutes==0?hours=59:hours=hours-1;
        //  hours<=0?dayss=0: dayss - 1;
        // dayss==0? minutes-1:minutes;
        // minutes<=0?seconds-1:seconds;
        final now = DateTime.now();
        if (now.isBefore(targetDate)) {
          _countdownDuration = targetDate.difference(now);
        } else {
          _countdownDuration = Duration.zero;
          _timer?.cancel();
        }
      });
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    setState(() {
      seconds = twoDigitSeconds;
      minutes = twoDigitMinutes;
      hours = twoDigits(duration.inHours.remainder(24));
      days = twoDigits(duration.inDays);
    });

    return "${twoDigits(duration.inDays)}d ${twoDigits(duration.inHours.remainder(24))}h $twoDigitMinutes $twoDigitSeconds";
  }

  final endDate =
      DateTime.now().second + const Duration(days: 7).inMilliseconds;

  @override
  Widget build(BuildContext context) {
    _formatDuration(_countdownDuration);
    return Scaffold(
      appBar: null,
      body: Container(
        color: colors,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    "assets/eduviceIcon.jpg",
                  ),
                ),
              ],
            ),
            const Text(
              "Unlock a world of possibilities",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Work Sans",
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            const Text(
              " Our study abroad website is almost here",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Work Sans",
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Stay tuned for unique programs, immersive experiences, and endless opportunities to broaden your horizons. Launching soon - your journey begins!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Work Sans",
                  fontSize: 12,
                  color: Colors.green),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      days,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: "Work Sans",
                          fontSize: 42,
                          color: Colors.white),
                    ),
                    const Text("Days")
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      hours,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: "Work Sans",
                          fontSize: 42,
                          color: Colors.white),
                    ),
                    const Text("Hours")
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    Text(
                      minutes,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Work Sans",
                          fontSize: 42,
                          color: Colors.white),
                    ),
                    const Text("Minutes")
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    Text(
                      seconds,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Work Sans",
                          fontSize: 42,
                          color: Colors.white),
                    ),
                    Text("Seconds")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 40,
                  color: Colors.white10,
                  child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter you email")),
                ),
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Subscribe",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Subscribe to get latest info",
                style: TextStyle(
                    color: Colors.white, fontSize: 10, fontFamily: "Work Sans"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          "assets/eduviceIcon.jpg",
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                EvaIcons.facebook,
                                color: colors,
                              )),
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
                        height: 10,
                      ),
                      Container(
                        width: 200,
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
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: colors,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 200,
                              child: Text(
                                "+447880223215",
                                style: TextStyle(color: secondColor),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            color: colors,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 200,
                              child: Text(
                                "info@eduvice.co.uk",
                                style: TextStyle(color: secondColor),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.web,
                            color: colors,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 200,
                              child: Text(
                                "eduvice.co.uk",
                                style: TextStyle(color: secondColor),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: colors,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 200,
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
            )),
          ],
        ),
      ),
    );
  }
}
