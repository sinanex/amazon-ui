import 'package:amazon/screens/account.dart';
import 'package:amazon/screens/cart.dart';
import 'package:amazon/screens/catogary.dart';
import 'package:amazon/screens/home.dart';
import 'package:flutter/material.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int currentIndex = 0;

  final pages = [HomeScreen(), Account(), Cart(), Catogary()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: currentIndex == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: currentIndex == 1 ? Colors.blue : Colors.grey,
              ),
              label: 'account',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: currentIndex == 2 ? Colors.blue : Colors.grey,
                ),
                label: 'cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: currentIndex == 3 ? Colors.blue : Colors.grey,
                ),
                label: 'categories'),
          ]),
    );
  }
}
