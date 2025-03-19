import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/components/custom_list_tile_container.dart';
import 'package:trackapp/components/custom_new_friend_list_tile.dart';

import '../features/addFriend/newFriend.dart';

class CustomSearchPageListView extends StatelessWidget {
  const CustomSearchPageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(0), children: [
      CustomAddNewListTile(
        onTap: () {
          Navigator.push(context, PageRouteBuilder(pageBuilder:(context,an,sc){
            return NewFriendView();
          }));
        },
        isText: false,
        text: 'Add new recipient',
        circleAvatarColor: Colors.blueAccent.withOpacity( 0.2),
        icon: FontAwesomeIcons.plus,
        iconColor: Color(0xff345CFF),
      ),
      SizedBox(
        height: 35,
      ),
      CustomListTileContainer(text: 'Track friends', itemCount: 3),
      SizedBox(
        height: 35,
      ),
      CustomListTileContainer(text: 'Other', itemCount: 10)
    ]);
  }
}
