import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:trackapp/components/close_icon.dart';
import 'package:trackapp/components/custom_new_transfer_all_list_view.dart';
import 'package:trackapp/components/custom_search_container.dart';
import 'package:trackapp/helper/responsive.dart';
import 'package:trackapp/litls/widgets/customText.dart';

import '../components/custom_new_friend_list_tile.dart';

class NewTrasferPage extends StatelessWidget {
  const NewTrasferPage({super.key});

  static String id = 'NewTrasfer';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 20.0, left: 20, top: 10, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CloseIcon(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 14,
              ),
              CustomText(
                text: 'New Transfer',
                fontWeight: FontWeight.w900,
                fontSize: 24,
              ),
              SizedBox(
                height: 14,
              ),
              CustomSearchContainer(),
              SizedBox(
                height: SizeConfig.screenHeight! * .03,
              ),
              Expanded(child: NewTransferContent()
                  // CustomNewTransfersAllListView(),
                  )
            ],
          ),
        ),
      ),
    );
  }
}

class NewTransferContent extends StatelessWidget {
  const NewTransferContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Add New',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
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
        Container(

            padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(IconlyLight.profile , color: Color(0xff345CFF),),
              ),
              SizedBox(width: 16,),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Enable contacks permissions' , fontWeight: FontWeight.bold,),
                  CustomText(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    text: 'Allow free and install payments', color: Colors.grey,)
                ],
              ))
            ],
          ),

        ),
      ],
    );
  }
}
