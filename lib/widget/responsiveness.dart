import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
   Responsiveness({super.key, required this.mobile, required this.desktop, required this.tab});
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>  MediaQuery.of(context).size.width<600;
  static bool istablet(BuildContext context) =>  MediaQuery.of(context).size.width>=600 && MediaQuery.of(context).size.width<1100;
  static bool isDesktop(BuildContext context) =>  MediaQuery.of(context).size.width<1100;


  @override
  Widget build(BuildContext context) {
    return ();
  }
}
