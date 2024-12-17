import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class intro extends StatelessWidget{
  intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(child: Column(
        children: [
          SizedBox(height: 130,),
          Image.asset('lib/Images/pngwing.com.png',width: 300,),
          SizedBox(height: 300,),
          Text("Just Do It",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Text("Premium sneakers by Nike",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black),),
          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context,'homepage');
            },
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
              child: Center(child: Padding(padding: EdgeInsets.all(25),
                child:Text("Shop Now",style: TextStyle(
                  color: Colors.white,fontSize: 18
              )
                ,) ,)),
            ),
          )
        ],
      )),
    );
  }

}