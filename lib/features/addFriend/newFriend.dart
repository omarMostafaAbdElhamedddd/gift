import 'package:flutter/material.dart';
import 'package:trackapp/litls/responsiveSize.dart';
import 'package:trackapp/litls/widgets/customButton.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class NewFriendView extends StatelessWidget {
  const NewFriendView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomVerticalSizeBox(padding: .5,),
            CustomText(
              text: 'Add a new contact',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            CustomVerticalSizeBox(padding: .7,),

            TextFormField(
              keyboardType: TextInputType.phone,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Enter phone number',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                )
              ),
            ),
            SizedBox(height: 20,),

            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
               hintText: 'Enter name',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  )
              ),
            ),
            Spacer(),
            CustomButton(text: 'Add', onTap: (){
              Navigator.pop(context);
            },),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
