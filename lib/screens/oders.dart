import 'package:amazon/screens/account.dart';
import 'package:amazon/screens/cart.dart';
import 'package:amazon/screens/home.dart';
import 'package:amazon/widget/wigets.dart';
import 'package:flutter/material.dart';

import 'catogary.dart';

class OdersPage extends StatefulWidget {
  const OdersPage({super.key});

  @override
  State<OdersPage> createState() => _OdersPageState();
}

class _OdersPageState extends State<OdersPage> {
  int currentIndex = 1;
  final pages = [
    const HomeScreen(),
    const Account(),
    const CartScreen(),
    const CatogaryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        flexibleSpace: Container(
          width: double.infinity,
          height: 152,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 72, 199, 241),
                Color.fromARGB(255, 148, 236, 193),
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 65),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 375,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, size: 26),
                        suffixIcon: Icon(Icons.center_focus_weak),
                        hintText: 'Search Amazon.in',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) {
          Navigator.pop(context);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Orders",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                width: double.infinity,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textRow('Your Orders'),
                    const Divider(),
                    textRow('Subscribe & save')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account Settings ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Column(
                  children: [
                    textRow("Login & security"),
                    const Divider(),
                    textRow("Your Account"),
                    const Divider(),
                    textRow("Login with amazon"),
                    const Divider(),
                    textRow("Content and devices"),
                    const Divider(),
                    textRow("Manage Your Profiles"),
                    const Divider(),
                    textRow("Default Purchase Settings"),
                    const Divider(),
                    textRow("Manage Prime membership"),
                    const Divider(),
                    textRow("Membership & Subscription"),
                    const Divider(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
