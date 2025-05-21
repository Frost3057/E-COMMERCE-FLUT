import 'package:ecommerce_app/COMPONENTS/ShoeTile.dart';
import 'package:ecommerce_app/DATA/Shoe.dart';
import 'package:ecommerce_app/DATA/ShoeModel.dart';
import 'package:ecommerce_app/PAGES/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget{
  Home({super.key});

  State<Home> createState() => _state();
}

class _state extends State<Home>{
  void addtocart(Shoe shoe){
    Provider.of<ShoeModel>(context,listen:false).addToCart(shoe);

    showDialog(context: context, builder: (context)=>AlertDialog(
        content: Text("Product added successfully 🥳🥳",style: TextStyle(fontWeight: FontWeight.bold),),
    ));
  }
  @override
  Widget build(BuildContext context) {

    return Consumer<ShoeModel>(builder: (context,value,child) => Scaffold(
      floatingActionButton: GestureDetector(
        onTap: (){
          value.getTotalCartValue();
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Cart();
          }));
        },
        child: Container(
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10) ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(Icons.shopping_cart,color: Colors.white,),
        ),
      ),
      ) ,
      appBar: AppBar(automaticallyImplyLeading :false,backgroundColor:  Colors.grey[100]
      ,title: Text("everyone flies .... but some fly longer than others",style: TextStyle(color: Colors.black54,fontStyle: FontStyle.italic),),
        titleTextStyle: TextStyle(fontSize: 14),),
      backgroundColor: Colors.grey[100],
      body:Padding(padding: EdgeInsets.all(25),child:
      Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hot deals 🔥🔥",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text("See all",style: TextStyle(color: Colors.blue),)
          ],
        ),
        SizedBox(height: 20,),
        Expanded(
          child: ListView.builder(itemBuilder: ( context, index){
            Shoe shoe = value.getShop()[index];
            return ShoeTile(shoe: shoe,onTap: ()=>addtocart(shoe),);
          },scrollDirection: Axis.horizontal,itemCount: 4,)
        )
      ],),
      ),
    ));
  }

}