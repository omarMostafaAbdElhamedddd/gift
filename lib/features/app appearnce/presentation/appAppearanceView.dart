
import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class AppAppearnceView extends StatelessWidget {
  const AppAppearnceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor:  Colors.grey.shade100,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.close , color: Colors.black,),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomText(text: 'Choose your icon' , fontWeight: FontWeight.w800,fontSize: 24,),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    CustomItemAppAppearance(
                      lock: false,
                      backgroundColor: Colors.black, text: 'Standard', iconcolor: Colors.white,),
                    SizedBox(height: 25,),
                    CustomItemAppAppearance(backgroundColor: Colors.blue.shade300, text: 'Palesite', iconcolor: Colors.white,),
                    SizedBox(height: 25,),
                    CustomItemAppAppearance(backgroundColor: Colors.black.withOpacity(.5), text: 'Plus', iconcolor: Colors.white,),
                    SizedBox(height: 25,),
                    CustomItemAppAppearance(backgroundColor: Colors.redAccent.shade100, text: 'Pink Sass', iconcolor: Colors.white,),
                    SizedBox(height: 25,),
                    CustomItemAppAppearance(backgroundColor: Colors.green.shade300, text: 'Electric Lime', iconcolor: Colors.white,),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class CustomItemAppAppearance extends StatelessWidget {
  const CustomItemAppAppearance({super.key,
    this.lock=true,
    required this.backgroundColor, required this.text, required this.iconcolor});
 final Color backgroundColor;
 final Color iconcolor;
 final String text;
 final bool lock;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              backgroundColor: backgroundColor,
              child: CustomText(
                text: '~',
                color: iconcolor,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),


            ),
            
          lock ?   Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Icon(Icons.lock , size: 14,),
          ) : SizedBox()
          ],
        ),
        SizedBox(width: 16,),
        CustomText(text: text),

      ],

    );
  }
}

