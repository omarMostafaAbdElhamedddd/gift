import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_card.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({super.key, this.controller, this.onPageChanged});
  void Function(int)? onPageChanged;
  PageController? controller;
  @override
  Widget build(BuildContext context) {
    return

      Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(

        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8)
      ),

      child: Column(
        children: [
         Row(
           children: [
             Expanded(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   CustomText(text: 'Get your card now' , fontWeight: FontWeight.w800,fontSize: 17,),
                    SizedBox(height: 4,),
                    CustomText(
                      maxLines: 6,
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      text: 'Get your favorite Telda card! Pay online or in-store and enjoy the various benefits of your selected', ),
                 ],
               ),
             ),
            SizedBox(width: 35,),
            Image.asset('images/track.png' , height: 100,width: 60,),

           ],
         ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: CustomText(text: 'Get Card',color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14,),
              ),
            ],
          ),



        ],
      ),
    );


    //   PageView(
    //   controller: controller,
    //   onPageChanged: onPageChanged,
    //   children: [
    //     CustomCard(
    //       buttonColor: Colors.black,
    //       cardColor: Colors.grey.shade100,
    //       title: 'Get your card now',
    //       subtitle:
    //           'Get your favorite Telda card! Pay online or in-store and enjoy the various benefits of your selected',
    //       image:
    //           'https://static.zawya.com/view/acePublic/alias/contentid/YmUwMWU5YzItNzJiMy00/0/mdp_teldasquare-jpg.webp?f=3%3A2&q=0.75&w=750',
    //       buttonText: 'Get Card',
    //     ),
    //     CustomCard(
    //       textButtonColor: const Color.fromARGB(255, 3, 86, 251),
    //       dismiss: true,
    //       cardColor:
    //           const Color.fromARGB(255, 3, 86, 251).withOpacity(0.2),
    //       title: 'Get your card now',
    //       subtitle:
    //           'Get your favorite Telda card! Pay online or in-store and enjoy the various benefits of your selected',
    //       image:
    //           'https://static.zawya.com/view/acePublic/alias/contentid/YmUwMWU5YzItNzJiMy00/0/mdp_teldasquare-jpg.webp?f=3%3A2&q=0.75&w=750',
    //       buttonText: 'Add',
    //       buttonColor: const Color.fromARGB(255, 3, 86, 251),
    //     ),
    //     CustomCard(
    //       dismiss: true,
    //       cardColor: Colors.grey.shade100,
    //       buttonText: 'Add',
    //       title: 'Get your card now',
    //       subtitle:
    //           'Get your favorite Telda card! Pay online or in-store and enjoy the various benefits of your selected',
    //       image:
    //           'https://static.zawya.com/view/acePublic/alias/contentid/YmUwMWU5YzItNzJiMy00/0/mdp_teldasquare-jpg.webp?f=3%3A2&q=0.75&w=750',
    //       buttonColor: Colors.black,
    //       textButtonColor: Colors.black,
    //     )
    //   ],
    // );
  }
}
