import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:trackapp/components/custom_app_bar.dart';
import 'package:trackapp/components/custom_dots_decator.dart';
import 'package:trackapp/components/custom_hide_and_show_component.dart';
import 'package:trackapp/components/custom_page_view.dart';
import 'package:trackapp/components/row_of_circle_avatars.dart';
import 'package:trackapp/features/profile/presentaion/profileView.dart';
import 'package:trackapp/helper/responsive.dart';
import 'package:trackapp/litls/widgets/customText.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });
  static String id = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();
  int current_page = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.screenWidth! * 0.05,
          right: SizeConfig.screenWidth! * 0.05,
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              text: 'Home',
              icon: Icon(Icons.account_circle , color: Colors.grey,),
              onPressed: () {
                Navigator.push(context, PageRouteBuilder(pageBuilder:(context,an,sc){
                  return ProfileView();
                }));
              },
            ),
            CustomText(text: 'EGP0' , fontWeight: FontWeight.w900,fontSize: 34,),
            SizedBox(
              height: 4,
            ),
            CustomHideAndShowComponent(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.03,
            ),
            RowOfCircleAvatars(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.06,
            ),

            CustomPageView(),
 
            // Flexible(
            //     child: CustomPageView(
            //   controller: _controller,
            //   onPageChanged: (index) {
            //     setState(() {
            //       current_page = index;
            //     });
            //   },
            // )),
            SizedBox(
              height: 8,
            ),
            Center(
              child: CustomDotesDecator(currentPage: current_page),
            ),
            SizedBox(
                height: SizeConfig.screenHeight! * 0.22,
                child: Center(
                    child: Image.asset(
                        'images/home.jpg'))),
          ],
        ),
      ),
    );
  }
}
