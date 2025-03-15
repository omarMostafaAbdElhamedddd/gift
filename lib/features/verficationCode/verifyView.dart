import 'package:flutter/material.dart';
import 'package:trackapp/features/passCode/EnterPassCode.dart';
import 'package:trackapp/litls/responsiveSize.dart';
import 'package:trackapp/litls/widgets/customButton.dart';

import '../../litls/widgets/customText.dart';
import '../../litls/widgets/verifyCode.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key, required this.phone});
final String phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Verify Your mobile number',
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 24,

            ),
            SizedBox(height: 5,),
            CustomText(text: 'Enter the code we send in an SMS to'),
            CustomText(text: phone , height: 1.4,),
            CustomVerticalSizeBox(),

            OtpInputFields(),

            SizedBox(height: 40,),

            Center(child: CustomText(text: 'Resend code agian' , fontWeight: FontWeight.w600,)),
                Spacer(),
            CustomButton(text: 'Continue' , onTap: (){
              Navigator.push(context, PageRouteBuilder(pageBuilder:(context,an,sc){
                return PassCodeView();
              }));
            },),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
