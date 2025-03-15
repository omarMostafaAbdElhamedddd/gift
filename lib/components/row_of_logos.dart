import 'package:flutter/material.dart';

class RowOfLogos extends StatelessWidget {
  const RowOfLogos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 25,
          child: Image.asset(
              'images/get card logo.jpg'),
        ),
        SizedBox(height: 25, child: VerticalDivider()),
        SizedBox(
          height: 25,
          child: Image.asset(
              'images/logoo.png'),
        ),
        SizedBox(height: 25, child: VerticalDivider()),
        SizedBox(
          height: 20,
          child: Image.asset('images/CBE-Logo.png'),
        ),
      ],
    );
  }
}
