import 'package:flutter/material.dart';
import 'package:trackapp/components/close_icon.dart';
import 'package:trackapp/components/custom_button.dart';
import 'package:trackapp/widgets/get_your_cards_body.dart';

class GetYourCard extends StatelessWidget {
  const GetYourCard({super.key});
  static String id = 'GetYourCard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10, bottom: 30),
          child: GetYourCardBody(id: id),
        ),
      ),
    );
  }
}
