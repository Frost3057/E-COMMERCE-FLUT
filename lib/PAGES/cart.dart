import 'package:ecommerce_app/COMPONENTS/CartTile.dart';
import 'package:ecommerce_app/DATA/Shoe.dart';
import 'package:ecommerce_app/DATA/ShoeModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget{
  Cart({super.key});

  State<Cart> createState() => _cart();
}

class _cart extends State<Cart>{
  void deleteItem(Shoe shoe){
    Provider.of<ShoeModel>(context,listen: false).removeFromCart(shoe);
  }
  @override
  Widget build(BuildContext context) {
   return Consumer<ShoeModel>(builder: (context,value,child){
     return Scaffold(
       backgroundColor: Colors.grey[100],
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.start,children: [
            SizedBox(height: 75,),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text("Cart",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          )
          ,Expanded(child: ListView.builder(itemBuilder: (context,index){
            Shoe shoe = value.getCart()[index];
            return CartTile(shoe: shoe, onTap: () {
              deleteItem(shoe);
            },);
          },itemCount: value.getCart().length,)),
          
        ],),
     );
   });
  }

}