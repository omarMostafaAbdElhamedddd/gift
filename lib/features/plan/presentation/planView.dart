import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

import '../../../helper/responsive.dart';

class PlanView extends StatelessWidget {
  const PlanView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Srandard',
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          CustomText(
                            text: 'Upgrade',
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade300,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          CustomText(
                            text: 'Manage',
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: SizeConfig.screenHeight! * .2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/visa.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      left: 22,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Standard',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          CustomText(
                            text: 'EGP 0 / month',
                            fontSize: 10,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      right: 30,
                      child: CustomText(
                        text: 'Track',
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(
                  text: 'Features for you',
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      CustomItemStandard(
                        iconData: Icons.credit_card,
                        title: 'Use your card anywhere',
                        subtile:
                            'Get your TRack card and use it anywhere online, in-store, or withdraw cash from any ATM',
                      ),
                      CustomItemStandard(
                          iconData: Icons.compare_arrows,
                          title: 'Send and receive money easily',
                          subtile: "Send and receive money like you send a text"),
                      CustomItemStandard(
                          iconData: Icons.analytics_outlined,
                          title: 'Track your spendings',
                          subtile:
                              "Get to know your spending habits with Insights, and see where your money goes"),
                      CustomItemStandard(
                          iconData: Icons.lock_clock_outlined,
                          title: 'Always stayin control',
                          subtile:

                              "Be in full controll of your card anytime, without speaking to a single hotline"),
               
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomItemStandard extends StatelessWidget {
  const CustomItemStandard(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subtile});

  final IconData iconData;
  final String title;

  final String subtile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade200),
            child: Icon(iconData),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 4,
                ),
                CustomText(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  maxLines: 4,
                  text: subtile,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
