import 'package:amazon/screens/account.dart';
import 'package:amazon/screens/catogary.dart'; // Make sure to import your OrdersPage here
import 'package:amazon/screens/tabbar.dart';
import 'package:amazon/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  final pages = [
    const HomeScreen(),
    const Account(),
    const CartScreen(),
    const CatogaryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: 'Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_cart),
            label: 'Cart', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
