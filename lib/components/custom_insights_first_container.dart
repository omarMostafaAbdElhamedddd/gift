import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/helper/responsive.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class CustomInsightsFirstContainer extends StatelessWidget {
  const CustomInsightsFirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'EGP0',
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
          CustomText(
            text: 'Expenenss this month',
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.grey,
          ),
           SizedBox(
             height: SizeConfig.screenHeight!*.12,
           ),
          Row(
            children: [
              Column(
                children: [
                  Icon(
                    FontAwesomeIcons.arrowTrendUp,
                    size: 14,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 16,
                    child: Divider(
                      height: 0,
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'No data to display',
                style: TextStyle(
                    color: Colors.grey.withOpacity(0.5), fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Color(0xff345CFF),
                  thickness: 2,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              CustomText(text: 'Expeness', fontSize: 10,fontWeight: FontWeight.bold,),
              Spacer(
                flex: 4,
              ),
              Dash(
                length: 30,
                dashColor: Colors.black,
                dashLength: 2,
                dashGap: 2,
              ),
              SizedBox(
                width: 6,
              ),
              CustomText(text: 'Budget', fontSize: 10,fontWeight: FontWeight.bold,)
            ],
          )
        ],
      ),
    );
  }
}
