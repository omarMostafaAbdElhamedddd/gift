import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 6,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                )),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blue.shade50,
                            child: CustomText(
                              text: 'OM',
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                          ),
                          InkWell(
                            child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xff345CFF),
                                // Colors.grey.shade200,
                                child: FittedBox(
                                    child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.image_outlined,
                                    color: Colors.white,
                                  ),
                                ))),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Omar Mostafa',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          CustomText(
                            fontWeight: FontWeight.w500,
                            text: '@ioomarMostafa',
                            color: Color(0xff345CFF),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.grey.shade100,
                                      child: Icon(Icons.event)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  text: 'Your plan',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                  text: 'Standard',
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.grey.shade100,
                                      child: Icon(IconlyLight.add_user)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  text: 'Invite friends',
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                  text: 'Earn money',
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                          )),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomText(
                            text: 'Usage',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 12),
                            decoration: BoxDecoration(
                                
                                color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: customProfileItem(name: 'Fees',subTitle: 'Detials of fees breakdown',widget: Icon(Icons.receipt),
                          )),
                          SizedBox(height: 10,),

                          CustomText(
                            text: 'Manage',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 12),
                            decoration: BoxDecoration(

                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              children: [
                                customProfileItem(name: 'App appearance',subTitle: 'Customize your app',widget: Icon(Icons.receipt),),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: customProfileItem(name: 'Setting',subTitle: 'Personal information,app & security',widget: Icon(Icons.receipt)),
                            ),

                                customProfileItem(name: 'Help',
                                    subTitleApp: true,
                                    subTitle: '',widget: Icon(Icons.help)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class customProfileItem extends StatelessWidget {
  const customProfileItem({
    super.key, required this.name, required this.subTitle, required this.widget,this.subTitleApp=false,
  });
 final String name;
 final String subTitle;
 final Widget widget;
 final bool subTitleApp;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget,
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: name,
              fontWeight: FontWeight.bold,
            ),
         subTitleApp ? SizedBox() :    CustomText(
              text: subTitle,
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.black54,
            )
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black54,
              size: 20,
            ))
      ],
    );
  }
}
