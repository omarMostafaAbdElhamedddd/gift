import 'package:flutter/material.dart';
import 'package:trackapp/components/bottom_sheet_container.dart';
import 'package:trackapp/components/row_of_circle_avatars.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 55,
              height: 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.black26),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: CustomText(
              maxLines: 3,
              text: 'Select how to add money to your Telda account',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            SizedBox(
              height: 20,
            ),
            BottomSheetContainer(
              text: 'Use a Debit/Credit card',
              widget: Icon(
                Icons.payment,
                color: Colors.black,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              text: 'Receive InstaPay transfers',
              isColor: false,
              image: AssetImage(
                  'images/insta.png'),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              text: 'Receive bank transfers',
              widget: Icon(
                Icons.account_balance,
                color: Colors.black,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              text: 'Add cash through ATM',
              widget: Icon(
                Icons.point_of_sale,
                color: Colors.black,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              isColor: false,
              text: 'Add cash through Fawry',
              image: AssetImage(
                  'images/cash.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
