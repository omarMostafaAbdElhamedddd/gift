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
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
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
                    top: 12,
                    left: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Track',
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomText(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      text: 'Say hello to your new card',
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CustomText(
                      color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        fontSize: 17,

                        text:
                            'get your track card and use it anywhere, online, in-store, or withdraw cash from any ATM worldwide'),
              CustomVerticalSizeBox(padding: 5,),
                    CustomButton(
                      color: Colors.white,
                      textColor: Colors.black,
                      text: 'Get started',
                      onTap: () {
                        Navigator.push(context,
                            PageRouteBuilder(pageBuilder: (context, an, sc) {
                          return LoginView();
                        }));
                      },
                    ),
                    CustomVerticalSizeBox(),
                  ],
                ),
              ),


            ],
          ),
        ));
  }
}
