import 'package:amazon/screens/Navigation.dart';
import 'package:amazon/screens/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
   home: BottomNavigation(),
    );
  }
}