import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class EditCategoriesSecontContainer extends StatelessWidget {
  const EditCategoriesSecontContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey.withOpacity(0.1), width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              contentPadding: EdgeInsets.only(bottom: 14),
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/shops.png'),
                ),
              ),
              title: CustomText(
                text: 'Groceries',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ));
        },
      ),
    );
  }
}
