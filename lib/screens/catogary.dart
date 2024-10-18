import 'package:amazon/widget/wigets.dart';
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
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 72, 199, 241),
                  Color.fromARGB(255, 148, 236, 193)
                ],
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(bottom: 120), 
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 250, 247, 247),
                        hintText: "Search Amazon.In",
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: const Icon(Icons.center_focus_weak),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: 150,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            containerCard(
                              imagePath: 'assests/images/free-amazon-pay-logo-icon-19613-thumb-removebg-preview.png',
                              text: 'Amazon Pay'
                            ),
                            containerCard(
                              imagePath: 'assests/images/amazon-minitv-watch-web-series-shows-for-free-o-161c7eZS-removebg-preview.png',
                              text: 'Amazon Mini Tv',
                            ),
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
                        smallContainer(
                          imagePath: 'assests/images/baby-removebg-preview.png',
                          text: 'baby products',height: 35
                        ),
                        smallContainer(
                          imagePath: 'assests/images/bag-removebg-preview.png',
                          text: 'bags &\nluggage',height: 20
                        ),
                        smallContainer(
                          imagePath: 'assests/images/beautyL-removebg-preview.png',
                          text: 'beauty &\nluxury beauty',height: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        smallContainer(
                          imagePath: 'assests/images/computer-removebg-preview.png',
                          text: 'computer &\nelectronics',height: 20
                        ),
                        smallContainer(
                          imagePath: 'assests/images/electronics-removebg-preview.png',
                          text: 'electronics &\naccessories',height: 20
                        ),
                        smallContainer(
                          imagePath: 'assests/images/groceryG-removebg-preview.png',
                          text: 'Grocery',height: 35
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        smallContainer(
                          imagePath: 'assests/images/helth-removebg-preview.png',
                          text: 'household',height: 35
                        ),
                        smallContainer(
                          imagePath: 'assests/images/homeele-removebg-preview.png',
                          text: 'home',height: 35
                        ),
                        smallContainer(
                          imagePath: 'assests/images/homeKi-removebg-preview.png',
                          text: 'home &\nkitchen',height: 25
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        smallContainer(
                          imagePath: 'assests/images/TV-removebg-preview.png',
                          text: 'Tv & Appliances',height: 35
                        ),
                        smallContainer(
                          imagePath: 'assests/images/homeele-removebg-preview.png',
                          text: 'home &\nElectronics',height: 20
                        ),
                        smallContainer(
                          imagePath: 'assests/images/furniture-removebg-preview.png',
                          text: 'Furniture',height: 35
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Sticky bottom container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  containerBtn(width: 90, text: "Orders"),
                  containerBtn(width: 100, text: "Buy Again"),
                  containerBtn(width: 90, text: "Account"),
                  containerBtn(width: 70, text: "List"),
                ],
              ),
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
