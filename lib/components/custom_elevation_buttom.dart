import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/pages/new_trasfer_page.dart';

class CustomElevationButton extends StatelessWidget {
  const CustomElevationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, NewTrasferPage.id);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            'New',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
