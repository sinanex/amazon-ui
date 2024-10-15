import 'package:flutter/material.dart';

Widget accBtn(text) {
  return SizedBox(
    width: 180,
    height: 50,
    child: OutlinedButton(
        style: OutlinedButton.styleFrom(backgroundColor: Colors.grey[300]),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )),
  );
}

Widget imageCard(String imgPath, String text) {
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Card(
        child: Container(
          child: Image.asset(imgPath),
          width: 190,
          height: 200,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    ],
  );
}

Widget containerCard({required String imagePath, required String text} ) {
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.circular(10)
          ),
          width: 180,
          height: 80,
          child: Image.asset(imagePath),
        ),
      ),
      Text(text,style: TextStyle(
        fontWeight: FontWeight.bold
      ),)
    ],
  );
}

Widget smallContainer({required String imagePath,required String text}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
          Image.asset(imagePath,width: 100,)
        ],
      ),
            decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
            ),
            width: 127,
            height: 150,
          ),
  );
}