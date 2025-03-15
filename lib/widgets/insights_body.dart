import 'package:flutter/material.dart';
import 'package:trackapp/components/close_icon.dart';
import 'package:trackapp/components/custom_insights_first_container.dart';
import 'package:trackapp/components/custom_insights_sub_title_row.dart';
import 'package:trackapp/litls/widgets/customText.dart';
import 'package:trackapp/pages/insights_page.dart';
import 'package:trackapp/widgets/second_insights_container.dart';

class InsightsBody extends StatelessWidget {
  const InsightsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CloseIcon(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(top: 16),
            children: [
               CustomText(text:'Insights',fontWeight: FontWeight.w800,fontSize: 22,),
              SizedBox(
                height: 20,
              ),
              CustomInsightsFirstContainer(),
              CustomInsightsSubTitleRow(),
              SizedBox(
                height: 6,
              ),
              SecondInsightsContainer(),
            ],
          ),
        )
      ],
    );
  }
}
