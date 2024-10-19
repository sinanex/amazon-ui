import 'dart:async';

import 'package:amazon/screens/Navigation.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=> 
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>BottomNavigation())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset('assests/images/amazon-logo-0.png'),
        ),
      ),
    );
  }
}