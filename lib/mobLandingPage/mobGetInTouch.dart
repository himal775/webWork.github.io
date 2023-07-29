import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobGetInTouch extends StatefulWidget {
  const MobGetInTouch({super.key});

  @override
  State<MobGetInTouch> createState() => _MobGetInTouchState();
}

class _MobGetInTouchState extends State<MobGetInTouch> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final preferredCountry = TextEditingController();
  final preferredCourse = TextEditingController();
  bool isVisible = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620.h,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "GET IN TOUCH",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: "Work Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 28.sp,
                ),
              ),
            ),
          ),
          Text(
            "We value your inquiry and get in touch with you.",
            style: TextStyle(fontSize: 18.sp, color: Colors.black87),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 400.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Image.asset(
                  "assets/gettouch.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                width: 120.w,
                height: 500.h,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0.5,
                          spreadRadius: 0.5,
                          offset: Offset(1, 0.5),
                          color: Colors.grey)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty field";
                            } else {
                              return null;
                            }
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              prefixIconColor: Colors.grey,
                              prefixIcon: Icon(Icons.person),
                              hintText: "FullName",
                              hintStyle: TextStyle(fontFamily: "Work Sans"),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: colors)),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white70, width: 0.0),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty field";
                            } else {
                              return null;
                            }
                          },
                          // controller: emailController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              prefixIconColor: Colors.grey,
                              prefixIcon: Icon(Icons.email),
                              hintText: "Email",
                              hintStyle: TextStyle(fontFamily: "Work Sans"),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: colors)),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white70, width: 0.0),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty field";
                            } else {
                              return null;
                            }
                          },
                          // controller: emailController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              prefixIconColor: Colors.grey,
                              prefixIcon: Icon(Icons.phone),
                              hintText: "Mobile",
                              hintStyle: TextStyle(fontFamily: "Work Sans"),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: colors)),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white70, width: 0.0),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty field";
                            } else {
                              return null;
                            }
                          },
                          // controller: emailController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              prefixIcon: Icon(Icons.flag),
                              suffixIconColor: Colors.grey,
                              suffixIcon: Icon(Icons.arrow_drop_down),
                              hintText: "Select Preferred Destination Country",
                              hintStyle: TextStyle(fontFamily: "Work Sans"),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: colors)),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white70, width: 0.0),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty field";
                            } else {
                              return null;
                            }
                          },
                          // controller: passController,
                          obscureText: isVisible,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: colors)),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 5),
                              prefixIcon: Icon(Icons.subject),
                              prefixIconColor: Colors
                                  .grey, // set the color of the prefix icon
                              suffixIconColor: Colors.grey,
                              hintText: "Select Preffered Course",
                              hintStyle: TextStyle(fontFamily: "Work Sans"),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white70, width: 0.0),
                              )),
                        ),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Checkbox(value: false, onChanged: (val) {}),
                          Container(
                              width: 80.w,
                              child: const Text(
                                "Yes, I would like to receive information on study abroad news and events from TheNext.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Work Sans"),
                              )),
                        ],
                      )),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              color: colors,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                                child: isLoading
                                    ? const CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : const Text(
                                        "Submit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                          ),
                        ),
                        onTap: () async {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
