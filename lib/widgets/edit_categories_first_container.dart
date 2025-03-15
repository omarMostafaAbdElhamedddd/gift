import 'package:flutter/material.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class EditCategoriesFirstContainer extends StatelessWidget {
  const EditCategoriesFirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: Icon(Icons.import_contacts),
              ),
              title: CustomText(text: 'Work',fontWeight: FontWeight.bold,),
              trailing: IntrinsicWidth(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Color(0xff345CFF),
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomText(text: 'Edit' ,color: Color(0xff345CFF),  fontWeight: FontWeight.bold,fontSize: 14,)

                  ],
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: Icon(Icons.add),
              ),
              title: CustomText(text:'Add category',fontWeight: FontWeight.bold,fontSize: 15,)


            )
          ],
        ));
  }
}
