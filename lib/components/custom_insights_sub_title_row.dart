import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';
import 'package:trackapp/pages/edit_categories_page.dart';

class CustomInsightsSubTitleRow extends StatelessWidget {
  const CustomInsightsSubTitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 16.0),
      child: Row(
        children: [
          Text(
            'Breakdown',
            style: TextStyle(color: Colors.blueGrey[400], fontSize: 15),
          ),
          Spacer(),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, EditCategoriesPage.id);
              },
              child:  CustomText(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                text:'Manage categories',
                color:Color(0xff345CFF), )

          ),
        ],
      ),
    );
  }
}
