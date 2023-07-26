import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eduvice/constant.dart';

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  Future pushData({required String email}) async {
    try {
      final databaseReference =
          FirebaseFirestore.instance.collection("users").doc().set({
        "email": email,
      });
      ;
// Using the set() method to set data at a specific location

      print(databaseReference);
      return "Success";
    } catch (e) {
      print(e);
      return "Not Success";
    }
  }

  Timer? _timer;
  DateTime startDate = DateTime(2023 - 07 - 21);
  DateTime endDate = DateTime(2023, 7, 27, 12, 29, 45, 890);

  final targetDate = DateTime.now().add(Duration(days: 7));
  Duration _countdownDuration = Duration.zero;
  String seconds = "0";
  String minutes = "0";
  String hours = "0";
  String days = "0";
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final form = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        final now = DateTime.now();

        if (now.isBefore(endDate)) {
          _countdownDuration = endDate.difference(now);
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

  @override
  Widget build(BuildContext context) {
    _formatDuration(_countdownDuration);

    return Scaffold(
      appBar: null,
      body: Form(
        autovalidateMode: AutovalidateMode.disabled,
        key: form,
        child: Container(
          color: colors,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150.h,
                    width: 150.w,
                    child: Image.asset(
                      "assets/eduviceIcon.jpg",
                    ),
                  ),
                ],
              ),
              Text(
                "Unlock a world of possibilities",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: "Work Sans",
                    color: Colors.white,
                    fontWeight: FontWeight.w100),
              ),
              Text(
                " Our study abroad website is almost here",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: "Work Sans",
                    color: Colors.white,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Stay tuned for unique programs, immersive experiences, and endless opportunities to broaden your horizons. Launching soon - your journey begins!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Work Sans",
                    fontSize: 12.sp,
                    color: Colors.green),
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 20.w,
                        child: Text(
                          "$days :",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: "Work Sans",
                              fontSize: 42.sp,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 20.w,
                        child: const Text(
                          "Days",
                          style: TextStyle(color: Colors.white30),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 20.w,
                        child: Text(
                          "$hours :",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: "Work Sans",
                              fontSize: 42.sp,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 20.w,
                        child: const Text(
                          "Hours",
                          style: TextStyle(color: Colors.white30),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 22.w,
                        child: Text(
                          "$minutes :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Work Sans",
                              fontSize: 42.sp,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 20.w,
                        child: const Text(
                          "Minutes ",
                          style: TextStyle(color: Colors.white30),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 20.w,
                        child: Text(
                          seconds,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Work Sans",
                              fontSize: 42.sp,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 20.w,
                        child: const Text(
                          "Seconds ",
                          style: TextStyle(color: Colors.white30),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.h,
                    width: 80.w,
                    color: Colors.white30,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Empty Field";
                        } else if (!value.contains("@gmail.com")) {
                          return "Invalid Email";
                        } else {
                          return null;
                        }
                      },
                      controller: emailController,
                      decoration: const InputDecoration(
                        // prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.only(
                          top: 5.0,
                        ),
                        hintText: "Enter your email",
                        border: InputBorder.none,
                        helperText: " ",
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      // form.currentState!.save();
                      if (form.currentState!.validate()) {
                        String response =
                            await pushData(email: emailController.text.trim());
                        if (response == "Success") {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    content: Container(
                                  height: 80.h,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Thank you for Subscribing",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "You will receive the latest updates and news. Stay tuned!",
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          child: Text(
                                            "Ok",
                                            style: TextStyle(
                                                color: colors,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ));
                              });

                          final Email send_email = Email(
                            body: 'body of email',
                            subject: 'subject of email',
                            recipients: ['pokharelsuman895@gmail.com'],
                            cc: ['himalneupane775@gmail.com'],
                            bcc: ['himalneupane775@gmail.com'],
                            attachmentPaths: ['/path/to/email_attachment.zip'],
                            isHTML: false,
                          );

                          await FlutterEmailSender.send(send_email);
                        } else {
                          print(response);
                        }
                      } else {}
                    },
                    child: Container(
                      width: 30.w,
                      height: 40.h,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          "Subscribe",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Text(
                  "Subscribe to get latest info",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontFamily: "Work Sans"),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Expanded(
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
              )),
            ],
          ),
        ),
      ),
    );
  }
}
