import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_elevation_buttom.dart';
import 'package:trackapp/litls/widgets/customText.dart';

import '../pages/new_trasfer_page.dart';

class CustomTransfersAppBar extends StatelessWidget {
  const CustomTransfersAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
       CustomText(

         text: 'Transfers' , fontSize: 32,fontWeight: FontWeight.w900,),
        Spacer(
          flex: 1,
        ),
         InkWell(
           onTap: (){
             Navigator.push(context, PageRouteBuilder(pageBuilder:(context,an,sc){
               return NewTrasferPage();
             }));
           },
           child: Container(
             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 16),
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(16),

             ),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisSize: MainAxisSize.min,
               children: [
                 Icon(Icons.add , color: Colors.white,size: 23,),
                 CustomText(text: 'New' ,
                   color: Colors.white,
                   fontSize: 14,fontWeight: FontWeight.w700,)

               ],
             ),
           ),
         ),
      ],
    );
  }
}
