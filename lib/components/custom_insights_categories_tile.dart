import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomInsightsCategoriesTile extends StatelessWidget {
  const CustomInsightsCategoriesTile({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(bottom: 14),
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/shops.png'),
        ),
      ),
      title: CustomText(
        text: text,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
      ),
      trailing: Icon(
        FontAwesomeIcons.angleRight,
        color: Colors.grey,
        size: 16,
      ),
    );
  }
}
