import 'package:amazon/wigets.dart';
import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Buy Again",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
               Container(
                width: 120,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Filters",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  Icon(Icons.keyboard_arrow_down),
                ],
                ),
               )
              ],
            ),
            const SizedBox(height: 20,),
           Container(

            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), 
                  spreadRadius: 1, 
                  blurRadius: 10,   
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none, 
                hintText: 'Search all orders',
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.grey[300],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      itemContainer(imagePath:  'assests/images/pixel-9.webp'
                      ,mainText: 'Pixel 9 (Porcelain 256GB)',date: 'Fri Oct 18'),

                          itemContainer(imagePath:  'assests/images/pixel5.webp',price: '1,24,999',mrp: '1,50,000'
                  ,mainText: 'Pixel 9 Pro XL (Rose QuartZ 256GB)',date: 'Fri Oct 18'),
                  
                    ]
                      ),
                  
                 
                   Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  itemContainer(imagePath:  'assests/images/pixel3.webp'
                  ,mainText: 'Pixel 9 (WinderGreen 256GB)',date: 'Fri Oct 18'),
              
                  itemContainer(imagePath: 'assests/images/pixel4.webp',
                  mainText: 'Pixel 9 (256 GB)',date: 'Wed Oct 16'
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
                    itemContainer(imagePath: 'assests/images/pixel-9-ga09342-in-google-original-imah3pfga8mahske.webp',
                      mainText: 'Pixel 9 (Peony 256 GB)',date: 'Wed Oct 16'),
                  itemContainer(imagePath: 'assests/images/pixel6.webp',
                  mainText: 'Pixel 9 pro XL(256 GB)',date: 'Wed Oct 16',mrp: '1,50,000'
                  ),
                ],
              ),
            
          ],
        )
              ),
            ),
          ],
        ),
      ),
    );
  }
}