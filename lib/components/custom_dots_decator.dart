import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotesDecator extends StatelessWidget {
  const CustomDotesDecator({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: currentPage,
      decorator: DotsDecorator(
        activeColor: const Color.fromARGB(255, 3, 86, 251),
        color: const Color.fromARGB(255, 3, 86, 251).withOpacity( 0.2),
        size: Size.square(8),
      ),
    );
  }
}
