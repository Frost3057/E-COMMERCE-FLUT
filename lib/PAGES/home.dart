import 'package:ecommerce_app/COMPONENTS/ShoeTile.dart';
import 'package:ecommerce_app/DATA/Shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  Home({super.key});

  State<Home> createState() => _state();
}

class _state extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.grey[100],),
      backgroundColor: Colors.grey[100],
      body:Padding(padding: EdgeInsets.all(25),child:
      Column(children: [
        //Search Bar
        Container(
          height: 50,
          decoration: BoxDecoration(color:Colors.black26,borderRadius: BorderRadius.circular(8),),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search),
              Text("Search")
            ],
          ),
        ),
        SizedBox(height: 30,),
        //Message
        Text("everyone flies .... but some fly longer than others",style: TextStyle(color: Colors.black54,fontStyle: FontStyle.italic),),
        SizedBox(height: 30,),
        //Hot deals
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hot deals 🔥🔥",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text("See all",style: TextStyle(color: Colors.blue),)
          ],
        ),
        SizedBox(height: 20,),
        // Sneakers
        Expanded(child: ListView.builder(itemBuilder: ( context, index){
          Shoe shoe = Shoe("Air Force 3 Low x Nigo", 14995.00, "lib/Images/shoe1.webp");
          return ShoeTile(shoe: shoe,);
        },scrollDirection: Axis.horizontal,itemCount: 4,)),
        SizedBox(height: 50,)

      ],),
      ),
    );
  }

}