import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:map_list_application/map_list_application.dart' as map_list_application;

void main() {
  print("Please Enter Your Name...");
  String? name=stdin.readLineSync();
  print("Welecome $name");
  print("List of available products on our store:");
  Map products={
    "prodect1":"milk",
    "prodect2":"rice",
    "prodect3":"flour",
    "prodect4":"orange",
    "prodect5":"eggs",
    "prodect6":"water",

  };
products.forEach((key, value) {
  print("$key : $value");
  
 });
 Map productsprice={
    "milk":5.33,
    "rice":4.89,
    "flour":2.67,
    "orange":3.5,
    "eggs":2.6,
    "water":0.8,
 };
 

 String? choice="";
 dynamic price;
  print("Pleaae Choose the products you want:");
  String? usrChs=stdin.readLineSync();
  products.forEach((key, value) { 
    if(usrChs==value){
      choice=value;

    }
    
  });
  
  price=productsprice['$choice'];
  print('The price of $choice is : \$$price');
}
  

