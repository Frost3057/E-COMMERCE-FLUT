
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navBar extends StatelessWidget {
  void Function(int)? onTabChange;

  navBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 50),child: GNav(tabs: [
      GButton(icon: Icons.home,text: " Home",
      ),
      GButton(icon: Icons.shopping_cart,text: " Cart",
      )
    ], onTabChange: onTabChange,
      tabBackgroundColor: Colors.black26,
      tabBorderRadius: 8,mainAxisAlignment: MainAxisAlignment.center,
    activeColor: Colors.black26,));
  }
}