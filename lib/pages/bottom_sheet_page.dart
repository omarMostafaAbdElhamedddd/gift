import 'package:flutter/material.dart';
import 'package:trackapp/components/close_icon.dart';
import 'package:trackapp/components/custom_button.dart';
import 'package:trackapp/litls/widgets/customText.dart';
import 'package:trackapp/pages/home_page.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  static String id = 'BottomSheetPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 13, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(
                height: 70,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 170,
                  child: Image.asset('images/unactive.png')),
              SizedBox(
                height: 30,
              ),
              CustomText(
                text: 'Your account is not active yet',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),

              SizedBox(
                height: 20,
              ),
               CustomText(
                 maxLines: 4,
                 textAlign: TextAlign.center,
                 text:  'Your account will be activated after you order, receive and activate your card. Once done, you will be able to add money to your account.',
               fontWeight: FontWeight.w500,
                   fontSize: 16,
               ),
              Spacer(),
              CustomButton(
                onTap: () {
                  Navigator.pop(context);

                },
                fullWidth: true,
                edgeInsets:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                text: 'Dismiss',
                textSize: 16,
                raduis: 14,
              )
            ],
          ),
        ),
      ),
    );
  }
}
