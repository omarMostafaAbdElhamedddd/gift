import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomAddNewListTile extends StatelessWidget {
  CustomAddNewListTile(
      {super.key,
      required this.text,
      required this.circleAvatarColor,
      this.isText = true,
      this.icon,
      this.iconColor,
      this.onTap});
  final String text;
  final Color circleAvatarColor;
  bool? isText;
  IconData? icon;
  Color? iconColor;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
              backgroundColor: circleAvatarColor,
              child: isText!
                  ? Text(
                      '~',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Icon(
                      icon,
                      color: iconColor,
                      size: 20,
                    )),
        ),
        title: CustomText(text: text,fontWeight: FontWeight.w600,)
      ),
    );
  }
}
