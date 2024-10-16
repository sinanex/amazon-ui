import 'package:amazon/wigets.dart';
import 'package:flutter/material.dart';

class CatogaryPage extends StatefulWidget {
  const CatogaryPage({super.key});

  @override
  State<CatogaryPage> createState() => _CatogaryPageState();
}

class _CatogaryPageState extends State<CatogaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 72, 199, 241),
              Color.fromARGB(255, 148, 236, 193)
            ],
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 250, 247, 247),
                    hintText: "Search Amazon.In",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.center_focus_weak),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                height: 150,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                       containerCard(imagePath: 'assests/images/free-amazon-pay-logo-icon-19613-thumb-removebg-preview.png',text: 'Amazon Pay'),
                       containerCard(imagePath: 'assests/images/amazon-minitv-watch-web-series-shows-for-free-o-161c7eZS-removebg-preview.png',text: 'Amazon Mini Tv'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
           Column(
            children: [
              Row(
                children: [
                  smallContainer(imagePath: 'assests/images/baby-removebg-preview.png',text: 'baby products'),
                  smallContainer(imagePath: 'assests/images/bag-removebg-preview.png',text: 'bagges &\nluggage'),
                  smallContainer(imagePath: 'assests/images/beautyL-removebg-preview.png',text:'beauty &\n laxury beauty' ),
                ],
              ),
               Row(
                children: [
                  smallContainer(imagePath:'assests/images/computer-removebg-preview.png',text: 'computer &\nelectronic'),
                  smallContainer(imagePath: 'assests/images/electronics-removebg-preview.png',text: 'electronics &\naccessoris'),
                  smallContainer(imagePath: 'assests/images/groceryG-removebg-preview.png',text: 'Grocery'),
                ],
              ),
               Row(
                children: [
                  smallContainer(imagePath: 'assests/images/helth-removebg-preview.png',text: 'house hold'),
                  smallContainer(imagePath: 'assests/images/homeele-removebg-preview.png',text: 'home'),
                  smallContainer(imagePath: 'assests/images/homeKi-removebg-preview.png',text: 'home&\nkitchen'),
                ],
              ),
               Row(
                children: [
                  smallContainer(imagePath: 'assests/images/TV-removebg-preview.png',text: 'Tv & Apliences'),
                  smallContainer(imagePath: 'assests/images/homeele-removebg-preview.png',text: 'home &\nElectronics'),
                  smallContainer(imagePath: 'assests/images/furniture-removebg-preview.png',text: 'Furniture'),
                ],
              ),

            ],
           )
          ],
        ),
      ),
    );
  }
}
