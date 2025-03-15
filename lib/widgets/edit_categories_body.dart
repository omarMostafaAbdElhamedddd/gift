import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';
import 'package:trackapp/pages/edit_categories_page.dart';
import 'package:trackapp/widgets/edit_categories_first_container.dart';
import 'package:trackapp/widgets/edit_categories_second_container.dart';

class EditCategoriesBody extends StatelessWidget {
  const EditCategoriesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustomText(
            text: 'Edit Ctegories',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10),
                children: [
                  CustomText(
                    text: 'Custom categories',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  EditCategoriesFirstContainer(),
                  SizedBox(
                    height: 30,
                  ),
                  CustomText(text:'Default categories',fontWeight: FontWeight.w600, ),
                  SizedBox(
                    height: 15,
                  ),
                  EditCategoriesSecontContainer(),
                ]),
          ),
        ]),
      ),
    );
  }
}
