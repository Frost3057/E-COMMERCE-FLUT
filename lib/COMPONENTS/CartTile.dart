import 'package:ecommerce_app/DATA/Shoe.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget{
  Shoe shoe;
  void Function()? onTap;
  CartTile({super.key,required this.shoe,required this.onTap});
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Padding(padding: EdgeInsets.only(bottom:20,left: 25,right: 25),
      child:Container(
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
      child:  Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 5,),
            Image.asset(shoe.filePath,width: w*0.2,),
            Text(shoe.name),
            GestureDetector(onTap:onTap,child:Icon(Icons.delete,color: Colors.red,),
            ),
          ],
        ),
      )
      ),
    );
  }}