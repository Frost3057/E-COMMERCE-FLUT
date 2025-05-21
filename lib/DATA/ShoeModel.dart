import 'package:ecommerce_app/DATA/Shoe.dart';
import 'package:flutter/cupertino.dart';

class ShoeModel extends ChangeNotifier{
  double sum = 0;
  List<Shoe> shop = [
    Shoe("Air Force 3 Low x Nigo", 14995.0, 'lib/Images/shoe1.webp'),
    Shoe("Spiridon x Fragment", 15995.00, 'lib/Images/shoe2.webp'),
    Shoe("Dunk Low Retro", 8295.00, 'lib/Images/shoe3.png'),
    Shoe("Tiempo Legend 10", 7495.00, 'lib/Images/shoe4.png')
  ];

  List<Shoe> cart = [];

  List<Shoe> getShop(){
    return shop;
  }

  List<Shoe> getCart(){
    return cart;
  }

  void addToCart(Shoe shoe){
    cart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe){
    cart.remove(shoe);
    sum-=shoe.price;
    notifyListeners();
  }
  void getTotalCartValue(){
    double sum1=0;
    for(Shoe s in cart){
      sum1+=s.price;
    }
    sum = sum1;
    notifyListeners();
  }
  void clearCart(){
    cart.clear();
    sum = 0;
    notifyListeners();
  }
}