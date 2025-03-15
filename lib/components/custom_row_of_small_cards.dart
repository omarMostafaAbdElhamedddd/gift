import 'package:flutter/material.dart';

import 'custom_more_component.dart';

class CustomRowOfSmallCards extends StatelessWidget {
  const CustomRowOfSmallCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CustomMoreComponent(
            image:
                'images/get cach.png',
            color: Color(0xffC3D2E9).withOpacity( 0.5),
            text: 'Get cash',
          ),
        ),
        Flexible(
          child: CustomMoreComponent(
            image:
                'images/referrals.JPG',
            color: Color.fromARGB(255, 238, 248, 255),
            text: 'Referrals',
          ),
        ),
        Flexible(
          child: CustomMoreComponent(
            image: 'images/rewards.png',
            color: Color(0xffFFDE03).withOpacity(0.2),
            text: 'Rewards',
          ),
        ),
        Flexible(
          child: CustomMoreComponent(
            image: 'images/pay later.png',
            color: Color(0xff8CDFC3).withOpacity(.2),
            text: 'Pay later',
          ),
        )
      ],
    );
  }
}
