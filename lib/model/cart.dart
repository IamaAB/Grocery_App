import 'package:flutter/material.dart';

class Cartmodel extends ChangeNotifier{
final List _shopitems= [
  // [itemname, price, color,image]
  ['Avocado', "4.00", "lib/images/avocado.png", Colors.green],
  ['Water', "3.00", "lib/images/water.png", Colors.blue],
  ['Chicken', "10.00", "lib/images/chicken.png", Colors.brown],
  ['Banana', "7.00", "lib/images/banana.png", Colors.yellow],
  ['Special Avocado', "4.00", "lib/images/avocado.png", Colors.green],
  ['Special Water', "3.00", "lib/images/water.png", Colors.blue],
  ['Special Chicken', "10.00", "lib/images/chicken.png", Colors.brown],
  ['Special Banana', "7.00", "lib/images/banana.png", Colors.yellow],
  ['Avocado', "4.00", "lib/images/avocado.png", Colors.green],
  ['Water', "3.00", "lib/images/water.png", Colors.blue],
  ['Chicken', "10.00", "lib/images/chicken.png", Colors.brown],
  ['Banana', "7.00", "lib/images/banana.png", Colors.yellow],
  ['Banana', "7.00", "lib/images/banana.png", Colors.yellow],
  ['Special Chicken', "10.00", "lib/images/chicken.png", Colors.brown],
  ['Special Banana', "7.00", "lib/images/banana.png", Colors.yellow],
  ['Avocado', "4.00", "lib/images/avocado.png", Colors.green],
  ['Water', "3.00", "lib/images/water.png", Colors.blue],
  ['Chicken', "10.00", "lib/images/chicken.png", Colors.brown],
  ['Banana', "7.00", "lib/images/banana.png", Colors.yellow],



];
List _cartitems=[];

get shopiems => _shopitems;
get cartitems => _cartitems;

// add items to cart
//   home page on pressed
 void additemstocart(int index){
   _cartitems.add(shopiems[index]);
   // help other widgets to update the data
   notifyListeners();

 }




// delete items from cart
  // cart page
void removeitems (int index){
   _cartitems.removeAt(index);
   notifyListeners();
}


// calculate from the cart
  // cart page
String Calculatetotal (){


double total = 0;
for ( int i =0; i< _cartitems.length; i++){
  total +=double.parse(_cartitems[i][1]);
}
return total.toStringAsFixed(2);


}


}