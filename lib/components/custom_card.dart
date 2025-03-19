import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_button.dart';
import 'package:trackapp/components/custom_list_tile.dart';
import 'package:trackapp/components/custom_text_and_button.dart';
import 'package:trackapp/litls/consts.dart';

import '../helper/responsive.dart';
import '../litls/widgets/customText.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {super.key,
      required this.cardColor,
      required this.title,
      required this.subtitle,
      required this.image,
      this.dismiss = false,
      required this.buttonText,
      this.buttonColor,
      this.textButtonColor});
  final Color cardColor;
  final String title;
  final String subtitle;
  final String image;
  bool? dismiss;
  final String buttonText;
  Color? buttonColor;
  Color? textButtonColor;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.only(right: 10),
        width: SizeConfig.screenWidth! - 45,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(

        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8)
      ),

      child: Column(

        children: [
         Expanded(
           child: Row(
             children: [
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     CustomText(text: title , fontWeight: FontWeight.w800,fontSize: 17,),
                      SizedBox(height: 4,),
                      Expanded(
                        child: Text(
                          subtitle,
                          maxLines: 4,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: mainFont,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey,
                            fontSize: 16,
                            height: 1,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ),
                   ],
                 ),
               ),
              SizedBox(width: 35,),
              Image.asset(image , height: 100,width: 60,),

             ],
           ),
         ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: CustomText(text: buttonText,color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14,),
              ),
            ],
          ),



        ],
      ),
    );
  }
}
