//1462100091 Ipram Zanuar Prakhastama

//import 'package:aktivitas1/RegisterScreen.dart';
import 'package:aktivitas1/SplashScreen.dart';
//import 'package:aktivitas1/halamanPin.dart';
//import 'package:aktivitas1/halaman1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
