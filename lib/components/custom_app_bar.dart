import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(text: text , fontSize: 24,color: Colors.black,fontWeight: FontWeight.w700,),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: onPressed,
          icon: icon,
          iconSize: 32,
        ),
      ],
    );
  }
}
