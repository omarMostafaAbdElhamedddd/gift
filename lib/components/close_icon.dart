import 'package:flutter/material.dart';

class CloseIcon extends StatelessWidget {
  CloseIcon({super.key, this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: Icon(Icons.close));
  }
}
