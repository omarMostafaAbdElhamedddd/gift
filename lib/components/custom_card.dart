import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_button.dart';
import 'package:trackapp/components/custom_list_tile.dart';
import 'package:trackapp/components/custom_text_and_button.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {super.key,
      required this.cardColor,
      required this.title,
      required this.subtitle,
      required this.image,
      this.dismiss = false,
      required this.buttonText,
      this.buttonColor,
      this.textButtonColor});
  final Color cardColor;
  final String title;
  final String subtitle;
  final String image;
  bool? dismiss;
  final String buttonText;
  Color? buttonColor;
  Color? textButtonColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: cardColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTextTile(title: title, subtitle: subtitle, image: image),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: dismiss!
                    ? CustomTextAndButton(
                        textButtonColor: textButtonColor,
                        buttonText: buttonText,
                        buttonColor: buttonColor)
                    : CustomButton(
                        text: buttonText,
                        buttonColor: buttonColor,
                        textColor: Colors.white),
              )
            ],
          )),
    );
  }
}
