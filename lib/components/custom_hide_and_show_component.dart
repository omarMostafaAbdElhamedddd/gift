import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomHideAndShowComponent extends StatelessWidget {
  const CustomHideAndShowComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.remove_red_eye_outlined,
          size: 14,
        ),
        SizedBox(
          width: 8,
        ),
       CustomText(text:'Current balance',color: Colors.grey,fontSize: 13,fontWeight: FontWeight.bold,)
      ],
    );
  }
}
