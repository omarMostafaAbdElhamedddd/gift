import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_card.dart';
import 'package:trackapp/helper/responsive.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({super.key, this.controller, this.onPageChanged});
  void Function(int)? onPageChanged;
  PageController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: SizeConfig.screenWidth! - 50,
        child: PageView(
        controller: controller,
        onPageChanged: onPageChanged,
        children: [
          CustomCard(
            buttonColor: Colors.black,
            cardColor: Colors.grey.shade100,
            title: 'Get your card now',
            subtitle:
                'Get your favorite Telda card! Pay online or in-store and enjoy the various benefits of your selected',
            image: 'images/track.png',
            buttonText: 'Get Card',
          ),
          CustomCard(
            textButtonColor: const Color.fromARGB(255, 3, 86, 251),
            dismiss: true,
            cardColor:
                const Color.fromARGB(255, 3, 86, 251).withOpacity(0.2),
            title: 'Add a profile picture',
            subtitle:
                'Choose a photo that represents you. This will appear to your frields and contacts',
            image:
                'images/profile.png',
            buttonText: 'Add',
            buttonColor: const Color.fromARGB(255, 3, 86, 251),
          ),
          CustomCard(
            dismiss: true,
            cardColor: Colors.grey.shade100,
            buttonText: 'Enable',
            title: 'Enable contacts permission',
            subtitle: 'Track works best with access to your contacts. Easily send and request instant payments for  free',
            image:
                'images/edit.png',
            buttonColor: Colors.black,
            textButtonColor: Colors.black,
          )
        ],
    ),
      );
  }
}
