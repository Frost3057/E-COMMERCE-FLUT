import 'package:flutter/cupertino.dart';

class Cart extends StatefulWidget{
  Cart({super.key});

  State<Cart> createState() => _cart();
}

class _cart extends State<Cart>{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Text("cart"),
   );
  }

}