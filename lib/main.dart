import 'package:flutter/material.dart';
import 'package:rahejacorp/Apartmentinfo.dart';
import 'package:rahejacorp/HomeScreen.dart';
import 'package:rahejacorp/LoginScreen.dart';

import 'package:rahejacorp/MainScreen.dart';

import 'Drawer.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
