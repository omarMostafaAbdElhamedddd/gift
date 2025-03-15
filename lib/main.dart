import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackapp/pages/bottom_sheet_page.dart';
import 'package:trackapp/pages/edit_categories_page.dart';
import 'package:trackapp/pages/get_your_card.dart';
import 'package:trackapp/pages/home_page.dart';

import 'package:trackapp/pages/insights_page.dart';

import 'package:trackapp/pages/main_home_page.dart';
import 'package:trackapp/pages/new_trasfer_page.dart';
import 'package:trackapp/pages/search_page.dart';
import 'package:trackapp/pages/transfers_page.dart';

import 'features/onBoardingViews/welcomeView.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent
  ));
  runApp(const TeldaApp());
}

class TeldaApp extends StatelessWidget {
  const TeldaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      TransfersPage.id: (context) => TransfersPage(),
      NewTrasferPage.id: (context) => NewTrasferPage(),
      SearchPage.id: (context) => SearchPage(),
      InsightsPage.id: (context) => InsightsPage(),
      EditCategoriesPage.id: (context) => EditCategoriesPage(),
      BottomSheetPage.id: (context) => BottomSheetPage(),
      HomePage.id: (context) => HomePage(),
      GetYourCard.id: (context) => GetYourCard()
    }, debugShowCheckedModeBanner: false, home: WelcomeView());
  }
}
