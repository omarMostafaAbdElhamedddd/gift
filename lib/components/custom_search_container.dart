import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/litls/widgets/customText.dart';
import 'package:trackapp/pages/search_page.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchPage.id);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 14),

        decoration: BoxDecoration(
            color: Colors.blueGrey.shade100.withOpacity( 0.4),
            borderRadius: BorderRadius.circular(28)),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Color(0xff92A0A2),
              size: 16,
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: FittedBox(
                child: CustomText(
                  text:'Name, @username, mobile number' ,
                  fontWeight: FontWeight.w800,
                  fontSize: 14,color: Color(
                  0xff92A0A2,
                ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
