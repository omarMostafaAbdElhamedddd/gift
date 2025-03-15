import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar(
      {super.key,
      required this.backgoundColor,
      required this.icon,
      required this.iconColor,
      required this.text,
      this.onTap});
  final Color backgoundColor;
  final IconData icon;
  final Color iconColor;
  final String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: backgoundColor,
            child: Icon(
              icon,
              color: iconColor,
              size: 22,
            ),
          ),
          SizedBox(
            height: 6,
          ),
           CustomText(text: text ,fontSize: 13,fontWeight: FontWeight.bold,)
        ],
      ),
    );
  }
}
