import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trackapp/components/custom_insights_categories_tile.dart';
import 'package:trackapp/widgets/edit_categories_body.dart';

class EditCategoriesPage extends StatelessWidget {
  const EditCategoriesPage({super.key});
  static String id = 'EditCategoryPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity( 0.96),
      body: EditCategoriesBody(),
    );
  }
}
