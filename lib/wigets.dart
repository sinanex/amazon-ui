import 'package:amazon/screens/oders.dart';
import 'package:flutter/material.dart';

Widget accBtn({String? text, BuildContext? context}) {
  return SizedBox(
    width: 180,
    height: 50,
    child: OutlinedButton(
        style: OutlinedButton.styleFrom(backgroundColor: Colors.grey[200]),
        onPressed: () {
          Navigator.push(
              context!, MaterialPageRoute(builder: (context) => const OdersPage()));
        },
        child: Text(
          text!,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )),
  );
}

Widget imageCard(String imgPath, String text) {
  return Column(
    children: [
      const SizedBox(
        height: 10,
      ),
      Card(
        child: SizedBox(
          width: 190,
          height: 200,
          child: Image.asset(imgPath),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    ],
  );
}

Widget containerCard({required String imagePath, required String text}) {
  return Column(
    children: [
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber[100],
              borderRadius: BorderRadius.circular(10)),
          width: 180,
          height: 80,
          child: Image.asset(imagePath),
        ),
      ),
      Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}

Widget smallContainer({required String imagePath, required String text}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: 127,
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            imagePath,
            width: 90,
          )
        ],
      ),
    ),
  );
}

Widget textRow(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Icon(Icons.chevron_right)
    ],
  );
}
