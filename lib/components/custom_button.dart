import 'package:flutter/material.dart';
import 'package:trackapp/litls/consts.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      this.buttonColor = Colors.black,
      this.textColor = Colors.white,
      this.raduis = 8,
      this.edgeInsets =
          const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      this.textSize = 18,
      this.fullWidth = false,
      this.onTap});
  final String text;
  double? raduis;
  Color? textColor;
  Color? buttonColor;
  EdgeInsets? edgeInsets;
  double? textSize;
  final bool fullWidth;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: fullWidth ? double.infinity : null,
        padding: edgeInsets,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(raduis!)),
        child: Text(
          textAlign: TextAlign.center,
          text,

          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: mainFont,

              color: textColor, fontSize: textSize),
        ),
      ),
    );
  }
}
