import 'package:ecommerce_app/DATA/Shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget{
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: w*0.7,
      height: h*0.4444,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 25,),
          Container(
            height: h*0.3,
            width: w*0.6,
            child:Image.asset(shoe.filePath,),
            decoration: BoxDecoration(color:Colors.grey[100],borderRadius: BorderRadius.circular(25)),
          ),SizedBox(height: 15,),
          
          Text(shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 64.0),
                  child: Text("₹"+shoe.price.toString(),style: TextStyle(fontSize: 15),),
                ),
                GestureDetector(
                  onTap: onTap,child:Container(
                  height: h*0.065,
                  width: w*0.15,
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