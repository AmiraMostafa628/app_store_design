import 'package:flutter/material.dart';

class Model{
  final String name;
  final String image;
  final String? price;
  final String? oldPrice;
  final String? amount;
  final Color? containerBackgroundColor;
  final Color? textBackGroundColor;
  final String? Qty;



  Model({required this.name, required this.image,this.price='',this.oldPrice='',this.amount='',this.Qty='',
    this.containerBackgroundColor=Colors.red,
    this.textBackGroundColor=Colors.red});

}