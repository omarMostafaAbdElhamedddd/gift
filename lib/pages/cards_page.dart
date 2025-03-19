import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:trackapp/components/custom_app_bar.dart';
import 'package:trackapp/components/custom_button.dart';
import 'package:trackapp/components/custom_column_image_and_text.dart';
import 'package:trackapp/pages/get_your_card.dart';

import '../litls/widgets/customText.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 18, right: 18, top: 14, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Cards',
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 14, right: 14),
                  child: CustomColumnImageAndText(),
                ),
              ),
            ),
           
            CustomButton(
              onTap: () {
                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (context, an, sc) {
                  return GetYourCard();
                }));
              },
              fullWidth: true,
              edgeInsets:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
              text: 'Get your card now',
              textSize: 16,
              raduis: 14,
            ),
          ],
        ),
      ),
    );
  }
}
