import 'package:flutter/material.dart';

class CustomCircleAvatarWithBorder extends StatelessWidget {
  CustomCircleAvatarWithBorder(
      {super.key,
      required this.backgoundColor,
      required this.icon,
      required this.iconColor,
      required this.text,
      required this.borderColor,
      this.onTap});
  final Color backgoundColor;
  final IconData icon;
  final Color iconColor;
  final String text;
  final Color borderColor;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Builder(builder: (context) {
            return CircleAvatar(
              radius: 28,
              backgroundColor: borderColor,
              child: CircleAvatar(
                radius: 27,
                backgroundColor: backgoundColor,
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 30,
                ),
              ),
            );
          }),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
