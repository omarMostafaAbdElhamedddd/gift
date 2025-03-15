import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_tap_bar_insights.dart';
import 'package:trackapp/components/custom_tap_bar_view.dart';
import 'package:trackapp/litls/widgets/customText.dart';
import 'package:trackapp/pages/insights_page.dart';

class SecondInsightsContainer extends StatefulWidget {
  const SecondInsightsContainer({
    super.key,
  });

  @override
  State<SecondInsightsContainer> createState() =>
      _SecondInsightsContainerState();
}

class _SecondInsightsContainerState extends State<SecondInsightsContainer> {
  bool switchBool = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            decoration: BoxDecoration(color: Colors.grey.shade200),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    switchBool = true;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: switchBool ? Colors.white : Colors.transparent,
                    ),
                    child: Center(
                        child: CustomText(
                      text: 'Categories',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    )),
                  ),
                )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    switchBool = false;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: !switchBool ? Colors.white : Colors.transparent,
                    ),
                    child: Center(
                        child: CustomText(
                      text: 'Merchants',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    )),
                  ),
                )),
              ],
            ),
          ),
          switchBool
              ? ListView.builder(
              padding: EdgeInsets.only(top: 25),
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomInsightItem();;
                  })
              : ListView.builder(
            padding: EdgeInsets.only(top: 25),
                  itemCount: 100,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomInsightItem(name: 'Spotify',);
                  }),
        ],
      ),
    );

  }
}

class CustomInsightItem extends StatelessWidget {
  const CustomInsightItem({super.key, this.name ='Groceries' });
 final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14,left: 16,right: 20),
      child: Row(children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/shops.png'),
          ),
        ),

        SizedBox(width: 16,),
         CustomText(text: name, fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey,),
        Spacer(),
        Icon(Icons.arrow_forward_ios_outlined ,color: Colors.grey,size: 16,)
      ],),
    );
  }
}

