import 'package:aktivitas1/halaman2.dart';
import 'package:aktivitas1/halaman3.dart';
import 'package:aktivitas1/halamanProfil.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectIndex = 0;

  List<Widget> _screenList = [
    Halaman2(),
    Halaman3(),
    HalamanProfil(),
  ];

  void gantiScreen(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: _selectIndex,
        onTap: gantiScreen,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                //color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.movie,
                //color: Colors.black,
              ),
              label: 'Movie'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                //color: Colors.black,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
