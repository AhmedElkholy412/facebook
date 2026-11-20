import 'package:flutter/material.dart';

class ActionCustom extends StatelessWidget{
  String image;
  double height;
  double width;
  ActionCustom({super.key, required this.image,required this.height ,required this.width });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ,
      width: width,
      child: Image.asset(image),
    );
  }
}