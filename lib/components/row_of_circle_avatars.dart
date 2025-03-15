import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/components/add_note_bottom_sheet.dart';
import 'package:trackapp/components/custom_circle_avatar.dart';
import 'package:trackapp/components/custom_circle_avatar_with_border.dart';
import 'package:trackapp/pages/insights_page.dart';
import 'package:trackapp/pages/transfers_page.dart';

class RowOfCircleAvatars extends StatelessWidget {
  const RowOfCircleAvatars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomCircleAvatar(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.grey.shade200,
                  isScrollControlled: true,
                  useSafeArea: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  context: context,
                  builder: (context) {
                    return AddNoteBottomSheet();
                  });
            },
            backgoundColor: Colors.black,
            icon: FontAwesomeIcons.plus,
            iconColor: Colors.white,
            text: 'Add money'),
        CustomCircleAvatar(
          onTap: () {
            Navigator.pushNamed(context, TransfersPage.id);
          },
          backgoundColor: Colors.blueGrey.withOpacity(0.1),
          icon: FontAwesomeIcons.arrowRight,
          iconColor: Colors.black,
          text: 'Send money',
        ),
        CustomCircleAvatarWithBorder(
            onTap: () {
              Navigator.push(context,PageRouteBuilder(pageBuilder:(context,an,sc){
                return InsightsPage();
              }));
            },
            backgoundColor: Colors.white,
            icon: Icons.insights,
            iconColor: Colors.black,
            text: 'Insights',
            borderColor: Colors.blueGrey.withOpacity(0.2)),
      ],
    );
  }
}
