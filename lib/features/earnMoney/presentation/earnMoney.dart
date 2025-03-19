import 'package:flutter/material.dart';

import 'package:trackapp/litls/widgets/customButton.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class EarMoney extends StatelessWidget {
  const EarMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close , color: Colors.black,),
        ),
      ),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [

              Image.asset('images/invite.jpg'),
              CustomText(
                text: 'Win up tp EGP 1,000 with Track',
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
              SizedBox(height: 16,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                    maxLines: 3,
                    text: 'Invite 4 freinds to Track & Earb EGP 250 for each friend who spends EGP 300'),
              ),

              Spacer(),
              CustomButton(text: 'Invite friend', onTap: (){
               Navigator.pop(context);
              },),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
