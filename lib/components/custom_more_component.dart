import 'package:flutter/material.dart';

class CustomMoreComponent extends StatelessWidget {
  const CustomMoreComponent(
      {super.key,
      required this.image,
      required this.color,
      required this.text});
  final String image;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          padding: EdgeInsets.all(8),
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Image.asset(image),
        ),
        SizedBox(
          height: 12,
        ),


        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
