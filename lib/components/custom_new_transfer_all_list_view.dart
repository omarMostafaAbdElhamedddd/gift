import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_contact_list_tile.dart';
import 'package:trackapp/components/custom_list_tile_container.dart';
import 'package:trackapp/components/custom_new_friend_list_tile.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomNewTransfersAllListView extends StatelessWidget {
  const CustomNewTransfersAllListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
         CustomText(text:'Add New',fontSize: 18,fontWeight: FontWeight.bold,),
        SizedBox(
          height: 10,
        ),
        CustomAddNewListTile(
          text: 'Track friend',
          circleAvatarColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(
          height: 30,
        ),
        CustomListTileContainer(text: 'Track friends', itemCount: 3),
        SizedBox(
          height: 30,
        ),
        CustomListTileContainer(text: 'Other', itemCount: 10)
      ],
    );
  }
}
