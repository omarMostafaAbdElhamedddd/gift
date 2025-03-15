import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_enabled_search_container.dart';
import 'package:trackapp/litls/widgets/customText.dart';
import 'package:trackapp/pages/search_page.dart';

class SearchPageSearchBar extends StatelessWidget {
  const SearchPageSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomEnabledSearchContainer(),
        ),
        SizedBox(
          width: 6,
        ),
        TextButton(
          child: CustomText(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            text: 'Cancle',color: Color(0xff345CFF),),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
