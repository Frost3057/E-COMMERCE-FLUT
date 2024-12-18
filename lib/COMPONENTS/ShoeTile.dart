import 'package:ecommerce_app/DATA/Shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget{
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 300,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(shoe.filePath,width: 300,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      Text("₹"+shoe.price.toString())
                    ],
                  ),
                ),
                GestureDetector(onTap: onTap,child:Container(
                  width: 70,
                  height: 86,
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),),
                  child: Icon(Icons.add,size: 30,color: Colors.white,),
                ) ,)
                ,
              ],
            ),

        ],
      ),
    );
  }

}