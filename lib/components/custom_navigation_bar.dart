import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key, required this.currentIndex, this.onTap});
  final int currentIndex;
  void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(indent: 10,endIndent: 10,color: Colors.grey.shade200,),
        BottomNavigationBar(
          elevation: 0,
            currentIndex: currentIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.blueGrey.withOpacity( 0.6),
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: onTap,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.home),
                label: 'home',
                activeIcon: Icon(IconlyBold.home)
              ),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.arrowRightArrowLeft),
                  label: 'transfer'),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: 'card',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'more',
              )
            ]),
        SizedBox(height: 6,),
      ],
    );
  }
}
