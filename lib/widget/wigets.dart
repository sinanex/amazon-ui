import 'package:amazon/screens/oders.dart';
import 'package:flutter/material.dart';

Widget accBtn({String? text, BuildContext? context}) {
  return SizedBox(
    width: 180,
    height: 50,
    child: OutlinedButton(
        style: OutlinedButton.styleFrom(backgroundColor: Colors.grey[200]),
        onPressed: () {
          Navigator.push(context!,
              MaterialPageRoute(builder: (context) => const OdersPage()));
        },
        child: Text(
          text!,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )),
  );
}
Widget smallContainer({required String imagePath, required String text,double? height}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black.withOpacity(0.3)
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 127,
          height: 150,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height,),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 170,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                  gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 217, 236, 241),
                  Colors.lightBlue[200]!,
                ],
              ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 60,
          left: 10,
          right: 10,
          child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
        ),
      ],
    ),
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
          fontWeight: FontWeight.bold
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

Widget containerBtn({required double width, required String text}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(10)),
    width: width,
    height: 50,
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget itemContainer({
  required String imagePath,
  required String mainText,
  required String date,
  String? mrp,
  String? price,
}) {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: Container(
      width: 200,
      height: 360,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  width: 120,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(Icons.more_vert),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              mainText,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "28%",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),const SizedBox(width: 10,),
                Text("₹"),
                Text(
                  price ?? '79,000',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
             Row(
               children: [
                const Text("MRP : ₹"),
                 Text(mrp != null? mrp.toString() : '89,000',style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                 ), ),
               ],
             ),
            const SizedBox(
              height: 2,
            ),
            Text("Get it by $date FREE"),
            const Text("Delivary by Amazon"),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow[600],
              ),
              child: const Center(
                  child: Text(
                "Add to cart",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    ),
  );
}
