import 'package:ecommerce_app/PAGES/HomePage.dart';
import 'package:flutter/material.dart';

import 'PAGES/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: intro(),
      routes: {
        'homepage': (context) => HomePage()
      },
    );
  }

}
