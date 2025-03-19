import 'package:flutter/material.dart';
import 'package:trackapp/components/close_icon.dart';
import 'package:trackapp/components/custom_button.dart';
import 'package:trackapp/components/row_of_logos.dart';
import 'package:trackapp/helper/responsive.dart';
import 'package:trackapp/litls/widgets/customText.dart';
import 'package:trackapp/pages/get_your_card.dart';

class GetYourCardBody extends StatelessWidget {
  const GetYourCardBody({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CloseIcon(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),

                CustomText(text: 'GET YOUR CARD ',fontSize: 26,fontWeight: FontWeight.w900,),

                CustomText(text:'IN 2 MINUTES',fontWeight: FontWeight.bold,fontSize: 24,),

                SizedBox(
                  height: 10,
                ),
                CustomText(
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  text: 'Spend anywhere, withdraw cash from any ATM in Egypt & track your spendings',
                fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),

                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight!*.3,
                  child: Image.asset(

                    'images/track.png'
                      ),
                ),
                SizedBox(
                  height: 30,
                ),
                

                
                Text(
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  'Licensed by the Central Bank of Egypt, in partnership with Banuqe Du Cairo and powered ...',
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
                SizedBox(
                  height: 20,
                ),
                RowOfLogos(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        
        CustomButton(
          onTap: (){
            Navigator.pop(context);
          },
          fullWidth: true,
          edgeInsets: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
          text: 'Get your card now',
          textSize: 18,
          raduis: 14,
        ),
      ],
    );
  }
}
