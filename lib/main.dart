import 'package:ecommerce_app/DATA/ShoeModel.dart';
import 'package:ecommerce_app/PAGES/HomePage.dart';
import 'package:ecommerce_app/PAGES/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'PAGES/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> ShoeModel(),builder: (context,child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const intro(),
        routes: {
          'homepage': (context) => HomePage()
        }
    ) ,);
  }

}
