import 'package:ecommerce_app/COMPONENTS/CartTile.dart';
import 'package:ecommerce_app/DATA/Shoe.dart';
import 'package:ecommerce_app/DATA/ShoeModel.dart';
import 'package:ecommerce_app/Service/apiService.dart';
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
    double width = MediaQuery.of(context).size.width;
   return Consumer<ShoeModel>(builder: (context,value,child){
     return Scaffold(
      bottomSheet: BottomSheet(shadowColor:Colors.black,elevation: 10,backgroundColor:Colors.white,onClosing:  (){}, builder: (context){
        return Container(
          width: width,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Amount : ",style: TextStyle(fontSize: 15),),
                    Text(value.sum.toString(),style: TextStyle(fontSize: 15),),
                  ],
                ),
                SizedBox(height: 25,),
                GestureDetector(
                  onTap: (){
                    value.clearCart();
                    Apiservice api = Apiservice();
                    api.postOrder();
                  },
                  child: Container(
                    width: width*0.7,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(15) ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text("Place Order",style: TextStyle(color: Colors.white),),
                    ),),
                  ),
                )
              ],
            ),
          ),
        );
      }),
      appBar: AppBar(automaticallyImplyLeading:false ,backgroundColor:Colors.grey[100],title: Text("Cart",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),) ,),
       backgroundColor: Colors.grey[100],
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.start,children: [
            SizedBox(height: 25,),
            Expanded(child: ListView.builder(itemBuilder: (context,index){
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