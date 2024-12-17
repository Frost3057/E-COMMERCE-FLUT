import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget{
  Home({super.key});

  State<Home> createState() => _state();
}

class _state extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("home"));
  }

}