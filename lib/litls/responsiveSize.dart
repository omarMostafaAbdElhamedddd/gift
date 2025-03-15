
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeConfig{
  static double? screenWidth;
  static double ? screenHeight;

  static Orientation ? orientation;

  static double ? defaultSize;

  void init(BuildContext context){
    screenWidth=MediaQuery.sizeOf(context).width;
    screenHeight=MediaQuery.sizeOf(context).height;

    defaultSize= orientation==Orientation.landscape ?
    screenWidth!*0.1 : screenHeight!*0.05;

  }
}
class CustomVerticalSizeBox extends StatelessWidget {
  const CustomVerticalSizeBox({super.key , this.padding=1});
  final double padding ;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height:SizeConfig.defaultSize!*padding,
    );
  }
}

class CustomHorizentalSizeBox extends StatelessWidget {
  const CustomHorizentalSizeBox({super.key , this.padding=1});
  final double padding ;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:SizeConfig.defaultSize!*padding,
    );
  }
}


