import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobService extends StatelessWidget {
  const MobService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Our Service",
              style: TextStyle(
                  color: Colors.green,
                  fontFamily: "Work Sans",
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 60.h,
              width: double.infinity,
              child: Text(
                """At Eduvice, we're committed to supporting you throughout every stage of your study abroad processing time, making your dreams of international education a reality""",
                style: TextStyle(fontSize: 16.sp, color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 270.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                            color: Colors.grey)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: secondColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Personalized Consultation",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: colors),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Our journey with you begins with a personalized consultation. We take the time to understand your academic aspirations, interests, and preferences. By gaining insights into your goals, we can tailor our services to match your unique study abroad needs.",
                            style: TextStyle(fontFamily: "Work Sans"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 270.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                            color: Colors.grey)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.school,
                          color: secondColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "University and Program Selection",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: colors),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Based on your preferences and academic background, we assist you in selecting the best-fit universities and study programs. Our extensive network of partner institutions worldwide ensures that you have access to a diverse range of high-quality academic options.",
                            style: TextStyle(fontFamily: "Work Sans"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 270.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                            color: Colors.grey)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.file_upload,
                          color: secondColor,
                        ),
                        Text(
                          "Application Assistance",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: colors),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Navigating the application process can be daunting, but we're here to make it seamless. Our team provides comprehensive support, helping you complete application forms, organize necessary documents, and meet deadlines effectively.",
                            style: TextStyle(fontFamily: "Work Sans"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 270.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                            color: Colors.grey)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.support,
                          color: secondColor,
                        ),
                        Text(
                          "Visa and Documentation Support",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: colors),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Acquiring a student visa can be complex, but worry not – we're here to guide you. Our experts offer assistance in preparing visa documentation, ensuring a smooth process for obtaining the necessary permits to study abroad.",
                            style: TextStyle(fontFamily: "Work Sans"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 270.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                            color: Colors.grey)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.flight,
                          color: secondColor,
                        ),
                        Text(
                          "Pre-departure Preparation",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: colors),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Before you embark on your journey, we provide comprehensive pre-departure briefings. From travel tips to cultural insights, we ensure you're fully prepared for your new academic adventure, promoting a successful transition to your chosen study destination.",
                            style: TextStyle(fontFamily: "Work Sans"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 270.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                            color: Colors.grey)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.done_all,
                          color: secondColor,
                        ),
                        Text(
                          "Visa Submission",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: colors),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Get easy access to a guaranteed Dfavo scholarship for successful offer holders.",
                            style: TextStyle(fontFamily: "Work Sans"),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
