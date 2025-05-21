import 'package:ecommerce_app/PAGES/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class intro extends StatelessWidget{
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(child:Column(
        children: [
          SizedBox(height: h*0.075,),
          Image.asset('lib/Images/pngwing.com.png',width: w*0.75,),
          Expanded(child: SizedBox()),
          Text("Just Do It",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Text("Premium sneakers by Nike",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black),),
          SizedBox(height: 60,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return auth();
              }));
            },
            child: Container(
              height: 75,
              width: w*0.75,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
              child: Center(child: Padding(padding: EdgeInsets.all(25),
                child:Text("Shop Now",style: TextStyle(
                  color: Colors.white,fontSize: 18
              )
                ,) ,)),
            ),
          )
        ,
        SizedBox(height: h*0.075,)
        ],
      ),
      ),
    );
  }

}