import 'package:eduvice/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetInTouch extends StatefulWidget {
  const GetInTouch({super.key});

  @override
  State<GetInTouch> createState() => _GetInTouchState();
}

class _GetInTouchState extends State<GetInTouch> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool isVisible = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
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
                  fontSize: 36.sp,
                ),
              ),
            ),
          ),
          Text(
            "We value your inquiry and get in touch with you.",
            style: TextStyle(fontSize: 22.sp, color: Colors.black87),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1, spreadRadius: 1, color: Colors.grey)
                    ]),
                child: Image.asset("country/testimony2.jpg"),
              ),
              Container(
                width: 100.w,
                height: 400.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1, spreadRadius: 1, color: Colors.grey)
                    ]),
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
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: colors)),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white70, width: 0.0),
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
                        controller: emailController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            prefixIconColor: Colors.grey,
                            prefixIcon: Icon(Icons.email),
                            hintText: "Email",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: colors)),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white70, width: 0.0),
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
                        controller: emailController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            prefixIconColor: Colors.grey,
                            prefixIcon: Icon(Icons.phone),
                            hintText: "Mobile",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: colors)),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white70, width: 0.0),
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
                        controller: emailController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            prefixIcon: Icon(Icons.flag),
                            suffixIconColor: Colors.grey,
                            suffixIcon: Icon(Icons.arrow_drop_down),
                            hintText: "Select Preferred Destination Country",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: colors)),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white70, width: 0.0),
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
                        controller: passController,
                        obscureText: isVisible,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: colors)),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 5),
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                child: Icon(isVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            prefixIcon: const Icon(
                              Icons.lock_open,
                            ),
                            prefixIconColor:
                                Colors.grey, // set the color of the prefix icon
                            suffixIconColor: Colors.grey,
                            hintText: "Select Preffered Course",
                            border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white70, width: 0.0),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40.h,
                          width: 50.w,
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
