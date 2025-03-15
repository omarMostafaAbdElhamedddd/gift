
import 'package:flutter/material.dart';
import 'package:trackapp/litls/consts.dart';
import 'package:trackapp/litls/responsiveSize.dart';
import 'package:trackapp/litls/widgets/customButton.dart';
import 'package:trackapp/litls/widgets/customText.dart';

import '../passCode/EnterPassCode.dart';
import '../verficationCode/verifyView.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back , color: Colors.black,),
        ),
        backgroundColor: Colors.grey.shade100,
        elevation: 0,

      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(

              text: "What's your mobile number" , fontSize:24,fontWeight: FontWeight.w900,fontFamily: mainFont,),
          SizedBox(height: 4,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CustomText(
                color: Colors.black54,
                maxLines: 3,

                  text: 'Enter your number to create account or login again.'),
            ),


            SizedBox(height: 30,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [

                      SizedBox(
                          height: 20,
                          child: Image.asset('images/egypt-flag-icon.png')),
                     SizedBox(width: 3,),
                      CustomText(text: '+20',fontWeight: FontWeight.w500,),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CustomText(
                              height: 1,
                              fontSize: 12,
                              color: Colors.grey,
                              text: 'Enter your phone number'),
                        ),
                        TextFormField(
                          controller: phoneController,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),

                          keyboardType: TextInputType.phone ,
                          decoration: InputDecoration(

                              isDense: true,
                            contentPadding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 8),
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CustomVerticalSizeBox(),
            Center(child: CustomText(
              fontSize: 14,
              text: 'Lost access to your number?',color: Colors.black,fontWeight: FontWeight.w800,)),
            Spacer(),
            CustomButton(text: 'Continue' , onTap: (){
              Navigator.push(context,PageRouteBuilder(pageBuilder:(context,an,sc){
                return VerifyCodeView(phone: phoneController.text,);
              }));
            },),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),

    );
  }
}
