import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
          width: double.infinity,
          height: 132,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 10, 135, 184),
                Color.fromARGB(255, 17, 236, 243),
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 26),
                    suffixIcon: Icon(Icons.center_focus_weak),
                    hintText: 'Search Amazon.in',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        // Delivery Location Container
        Container(
          height: 50,
          width: double.infinity,
          color: const Color.fromARGB(255, 129, 213, 232),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined, size: 25),
                SizedBox(width: 5),
                Text(
                  "Deliver to Shahin - Thenhippalam 673635",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Horizontal ListView for Images
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              circleImage(
                text: "Bazar",
                image: Image.asset(
                  'assests/images/bazar.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              circleImage(
                text: "Home",
                image: Image.asset(
                  'assests/images/home.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              circleImage(
                text: "Elecronics",
                image: Image.asset(
                  'assests/images/electroinc.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              circleImage(
                text: "Everyday",
                image: Image.asset(
                  'assests/images/everyday.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              circleImage(
                text: "Beauty",
                image: Image.asset(
                  'assests/images/beauty.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              circleImage(
                text: "Fashion",
                image: Image.asset(
                  'assests/images/fashion.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              circleImage(
                text: "Groceris",
                image: Image.asset(
                  'assests/images/groceris.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              circleImage(
                text: "Mxplear",
                image: Image.asset(
                  'assests/images/mxplear.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        CarouselSlider(
          disableGesture: true,
          items: [
            'assests/images/image1.jpg',
            'assests/images/image3.jpg',
            'assests/images/image4.jpg',
            'assests/images/image2.jpg'
          ].map((e) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: double.infinity,
                  // margin: EdgeInsets.symmetric(horizontal: 5.0),

                  child: Center(
                    child:
                        Image.asset(e), // Pass 'e' to display different images
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 350,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayInterval: const Duration(seconds: 3),
            viewportFraction: 0.8,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Card(
                child: Container(
                  width: 200,
                  height: 230,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[ 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        circleImage(image: Image.asset('assests/images/apay.png'), text: 'amazon pay'),
                          circleImage(image: Image.asset('assests/images/re.png'), text: 'Recharge'),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        circleImage(image: Image.asset('assests/images/Rewa.png'), text: 'Reward'),
                         circleImage(image: Image.asset('assests/images/payb.png'), text: 'Pay bills'),
                      ],
                    )
                      
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  color: Colors.amber[100],
                  width: 150,
                  height: 200,
                ),
              ),
              Card(
                child: Container(
                  color: Colors.amber[100],
                  width: 150,
                  height: 200,
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }

  Widget circleImage({required Widget image, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: image,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
