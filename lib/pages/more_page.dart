import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:trackapp/components/custom_app_bar.dart';
import 'package:trackapp/components/custom_more_component.dart';
import 'package:trackapp/components/custom_row_of_small_cards.dart';
import 'package:trackapp/litls/widgets/customText.dart';

import '../features/profile/presentaion/profileView.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            text: 'More',
            icon: Icon(Icons.account_circle , color: Colors.grey,),
            onPressed: () {

              Navigator.push(context, PageRouteBuilder(pageBuilder:(context,an,sc){
                return ProfileView();
              }));
            },
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Essentials',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: CustomRowOfSmallCards(),
          ),
          SizedBox(height: 10,),
          CustomMoreComponent(
            image: 'images/points.png',
            color: Color.fromARGB(255, 218, 237, 255).withOpacity(0.6),
            text: 'Points',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 20),
            child: CustomText(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              text: 'Life Style',
            )
          ),
          CustomMoreComponent(
            image: "images/shops.png",
            color: Color(0xffD3756B).withOpacity( 0.2),
            text: 'Shops',
          ),
        ],
      ),
    );
  }
}
