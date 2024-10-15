import 'package:flutter/material.dart';

Widget accBtn(text){
  return SizedBox(
    width: 180,
    height: 50,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.grey[300]
      ),
      onPressed: (){}, child: Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),)),
  );

}