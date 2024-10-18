import 'package:amazon/screens/buy.dart';
import 'package:amazon/screens/cartpage.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
           flexibleSpace: Container(
            width: double.infinity,
            height: 170,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 72, 199, 241),
                  Color.fromARGB(255, 148, 236, 193)
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
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(text: 'Cart'),
              Tab(text: 'Buy Again'),
              Tab(text: 'Keep Shopping'),
              Tab(text: ""),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
           Cartpage2(),
            BuyPage(),
            KeepShopping(),
            Spaced(),
          ],
        ),
      ),
    );
  }
}

class KeepShopping extends StatelessWidget {
  const KeepShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}

class Spaced extends StatelessWidget {
  const Spaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
