import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_contact_list_tile.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomListTileContainer extends StatelessWidget {
  const CustomListTileContainer(
      {super.key, required this.text, required this.itemCount});
  final String text;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       CustomText(text: text , fontSize: 20,fontWeight: FontWeight.bold,),
        SizedBox(
          height: 15,
        ),
        CustomContactListTile(
          itemCount: itemCount,
        ),
      ],
    );
  }
}
