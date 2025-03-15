import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;

  static Orientation? orientation;

  static double? defualtSize;

  void init(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    screenHeight = MediaQuery.sizeOf(context).height;
    defualtSize = orientation == Orientation.landscape
        ? screenWidth! * 0.1
        : screenHeight! * 0.05;
  }
}
