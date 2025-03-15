import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomContactListTile extends StatelessWidget {
  const CustomContactListTile({
    super.key,
    required this.itemCount,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index) {
          return CustomThreeListTile(
            icon: Icons.person,
            iconColor: Colors.black,
            title: 'Omar Mostafa',
            subTitle: '+201030653634',
            circleAvatarColor: Colors.grey.withOpacity( 0.1),
          );
        },
      ),
    );
  }
}

class CustomThreeListTile extends StatelessWidget {
  const CustomThreeListTile({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subTitle,
    required this.circleAvatarColor,
  });
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subTitle;
  final Color circleAvatarColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: circleAvatarColor,
          child: Icon(
            IconlyLight.profile,
            color: iconColor,
          )),
      title:  CustomText(text: title,fontWeight: FontWeight.w500,fontSize: 18,),
      subtitle: CustomText(text: subTitle,fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey,)
    );
  }
}
