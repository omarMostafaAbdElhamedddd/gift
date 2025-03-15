
import 'package:flutter/material.dart';


import '../consts.dart';
import '../responsiveSize.dart';
import 'customText.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text,this.textColor=Colors.white, this.onTap , this.color=Colors.black});

  final Color textColor;
  final String text;
  final Function()? onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        // EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth!*.22),
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
            color:color, borderRadius: BorderRadius.circular(10)),

        child: Center(
          child: CustomText(
            text: text,
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}