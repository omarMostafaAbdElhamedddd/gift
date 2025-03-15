import 'package:flutter/material.dart';
import 'package:trackapp/features/login/loginView.dart';
import 'package:trackapp/litls/responsiveSize.dart';
import 'package:trackapp/litls/widgets/customButton.dart';
import 'package:trackapp/litls/widgets/customText.dart';
class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: 'Welcome here' , color: Colors.white,),
             CustomVerticalSizeBox(),
            CustomButton(
              color: Colors.white,
              textColor: Colors.black,
              text: 'Get started', onTap: (){
              Navigator.push(context,PageRouteBuilder(pageBuilder:(context,an,sc){
                return LoginView();
              }));
            },)
          ],
        ),
      )


    );
  }
}
