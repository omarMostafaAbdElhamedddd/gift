import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/litls/consts.dart';

class CustomEnabledSearchContainer extends StatelessWidget {
  const CustomEnabledSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade100.withOpacity( 0.4),
          borderRadius: BorderRadius.circular(28)),
      child: TextFormField(
        style: TextStyle(
          fontSize: 14,
          height: 1.3,
          fontFamily: mainFont,
          fontWeight: FontWeight.w500,

        ),
        cursorColor:Color(0xff345CFF),
        decoration: InputDecoration(
          hintText: 'Name, @username, Phone',
          hintStyle: TextStyle(

            height: 1.7,

            fontFamily: mainFont,
              fontWeight: FontWeight.bold,
              color: Color(
                0xff92A0A2,
              ),
              fontSize: 13),
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Color(0xff92A0A2),
            size: 14,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: Colors.blueGrey.shade100.withOpacity( 0.4),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: Colors.blueGrey.shade100.withOpacity(0.4),
            ),
          ),
        ),
      ),
    );
  }
}
