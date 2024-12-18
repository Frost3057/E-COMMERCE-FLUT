import 'package:ecommerce_app/COMPONENTS/navBar.dart';
import 'package:ecommerce_app/PAGES/cart.dart';
import 'package:ecommerce_app/PAGES/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  HomePage({super.key});
  @override
  State<HomePage> createState() => _homepage();
}

class _homepage extends State<HomePage> {
  int _selectedIndex = 0;

  void changePage(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
final List<Widget> pages = [
  Home(),
  Cart()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: navBar(onTabChange: (index)=>changePage(index),),
      body: pages[_selectedIndex],
    );
  }

}