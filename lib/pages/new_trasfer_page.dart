import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:trackapp/components/close_icon.dart';
import 'package:trackapp/components/custom_new_transfer_all_list_view.dart';
import 'package:trackapp/components/custom_search_container.dart';
import 'package:trackapp/helper/responsive.dart';
import 'package:trackapp/litls/widgets/customButton.dart';
import 'package:trackapp/litls/widgets/customText.dart';

import '../components/custom_new_friend_list_tile.dart';
import '../features/addFriend/addFriendView.dart';

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
          onTapp: () {
            Navigator.push(context,
                PageRouteBuilder(pageBuilder: (context, an, sc) {
              return AddFriendView();
            }));
          },
          text: 'Track friend',
          circleAvatarColor: Colors.grey.withOpacity(0.1),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
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
                  return CustomContactPerimissions();
                });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(
                    IconlyLight.profile,
                    color: Color(0xff345CFF),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Enable contacks permissions',
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      text: 'Allow free and install payments',
                      color: Colors.grey,
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomContactPerimissions extends StatelessWidget {
  const CustomContactPerimissions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10,),
          CustomText(
            maxLines: 3,
            text: 'Track works best with access toyour contacts',
            fontWeight: FontWeight.w900,

            fontSize: 22,
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
            color: Colors.black54,
              fontWeight: FontWeight.w500,
              maxLines: 4,
              text:
                  'Track collects contacts list information to enable easy transfers of money to your contacts on Track only by using app.'),
       SizedBox(height: 35,),
       CustomButton(text: 'Enable' , onTap: (){
         Navigator.pop(context);
       },),
          SizedBox(height: 16,),

          CustomButton(
            onTap: (){
              Navigator.pop(context);
            },
            text: 'Not now', color: Colors.black12,textColor: Colors.black,),
        ],
      ),
    );
  }
}
