import 'package:flutter/material.dart';
import 'package:trackapp/litls/responsiveSize.dart';
import 'package:trackapp/litls/widgets/customText.dart';

import '../../pages/search_page.dart';
import 'newFriend.dart';

class AddFriendView extends StatelessWidget {
  const AddFriendView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            CustomText(
              fontSize: 20,
              text: 'How to add a Track friend',
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
            CustomVerticalSizeBox(padding: 1.2,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,PageRouteBuilder(pageBuilder:(context,an,sc){
                  return SearchPage();
                }));
              },
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 8 , top: 16,bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100, shape: BoxShape.circle),
                      child: CustomText(
                        text: '@',
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Search by @username',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            fontSize: 14,
                            maxLines: 3,
                            text:
                                'Find frinds by their Track @username on their profile',
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){

                    }, icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black54,size: 20,))
                  ],
                ),
              ),
            ),
            SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,PageRouteBuilder(pageBuilder:(context,an,sc){
                  return NewFriendView();
                }));
              },
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 8 , top: 16,bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100, shape: BoxShape.circle),
                      child: Icon(Icons.call, color: Colors.black,),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Add phone',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            fontSize: 14,
                            maxLines: 3,
                            text:
                            'Add their contacts details to your device',
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){

                    }, icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black54,size: 20,))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
