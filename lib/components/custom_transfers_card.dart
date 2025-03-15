import 'package:flutter/material.dart';
import 'package:trackapp/helper/responsive.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomTransfersCard extends StatelessWidget {
  CustomTransfersCard({super.key, this.onPressed});
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20 , bottom: 10 , left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight!*.1,
                child: Image.asset(
                    'images/transfer.png'),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 5,top: 12),
                child: CustomText(text: 'Send your first tansfer!' , fontWeight: FontWeight.bold,fontSize: 16,),
              ),
              SizedBox(
                height: 3,
              ),

              CustomText(
                maxLines: 3,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                fontSize: 15,
                text:'Create a new beneficiary or search for a contant in your phonebook.',
                color: Color(0xff92A0A2),
              ),

              SizedBox(
                height: 14,
              ),
              TextButton(
                  onPressed: onPressed,
                  child: CustomText(
                    text: 'Get Started',
                    fontWeight: FontWeight.w800,
                    color:Color(0xff345CFF) ,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
