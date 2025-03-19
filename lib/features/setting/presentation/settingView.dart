import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Setting',
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8
                      , vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      CustomSettingItem(
                          text: 'Personal details',
                          icon: Icon(Icons.person),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),
                      CustomSettingItem(
                          text: 'Delivery address',
                          icon: Icon(Icons.delivery_dining),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),
                      CustomSettingItem(
                          text: 'App  Language',
                          icon: Icon(Icons.language),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 16,),

                CustomText(
                  text: 'Security',
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8
                      , vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      CustomSettingItem(
                          text: 'Change Passcode',
                          icon: Icon(Icons.lock_clock_outlined),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),
                      CustomSettingItem(
                          text: 'Blocked users',
                          icon: Icon(Icons.block),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),
                      CustomSettingItem(
                          text: 'Connected apps',
                          icon: Icon(Icons.apps),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),
                    ],
                  ),
                ),

                SizedBox(height: 16,),

                CustomText(
                  text: 'About us',
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8
                      , vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      CustomSettingItem(
                          text: 'Rate us on the Playstore',
                          icon: Icon(Icons.lock_clock_outlined),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),
                      CustomSettingItem(
                          text: 'Like us on facebook',
                          icon: Icon(Icons.block),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),
                      CustomSettingItem(
                          text: 'Follow us on twitter',
                          icon: Icon(Icons.apps),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),

                      CustomSettingItem(
                          text: 'Privacy policy',
                          icon: Icon(Icons.privacy_tip),
                          lastIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 16,
                          )),

                    ],
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(Icons.login_outlined , color: Colors.redAccent,),
                        SizedBox(width: 16,),
                        CustomText(text: 'Logout' ,color: Colors.redAccent,fontWeight: FontWeight.w600,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Center(child: CustomText(text: 'Version 1', color: Colors.grey,fontWeight: FontWeight.w500,)),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSettingItem extends StatelessWidget {
  const CustomSettingItem(
      {super.key,
      required this.text,
      required this.icon,
      required this.lastIcon});

  final String text;
  final Widget icon;
  final Widget lastIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 16,
          ),
          CustomText(
            text: text,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          Spacer(),
          lastIcon,
        ],
      ),
    );
  }
}
