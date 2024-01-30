//import 'package:aktivitas1/BottomNavigator.dart';
import 'package:aktivitas1/RegisterScreen.dart';
import 'package:aktivitas1/halamanPin.dart';
//import 'package:aktivitas1/halamanPins.dart';
//import 'package:aktivitas1/halaman2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Halaman1 extends StatefulWidget {
  const Halaman1({super.key});

  @override
  State<Halaman1> createState() => _Halaman1State();
}

class _Halaman1State extends State<Halaman1> {
  String? nbi;
  String? nama;
  String? kelas;
  void data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _nbi = prefs.getString('nbi');
    final String? _nama = prefs.getString('nama');
    final String? _kelas = prefs.getString('kelas');
    setState(() {
      nbi = _nbi;
      nama = _nama;
      kelas = _kelas;
    });
  }

  @override
  void initState() {
    super.initState();
    data();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'PRAKTIKUM PAB 2023',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 32),
            Text(
              '$nbi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.network(
                'https://images-ext-2.discordapp.net/external/bPPbKgpzVRLuGiwMukmcgDtRJeMAg0E-jyJwXE_gP3A/%3Fw%3D740%26t%3Dst%3D1699977382~exp%3D1699977982~hmac%3D8db4bacce4ea1379c5e7551dff5c9aeab23db296558a0d77b7796dbd0f6d8ddb/https/img.freepik.com/free-vector/man-working-using-laptop-flat-design_1308-102458.jpg?width=852&height=700',
                width: 200,
                height: 200),
            SizedBox(height: 24),
            Text(
              '$nama',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Text(
            //   '$kelas',
            //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HalamanPin();
                  }),
                );
              },
              child: Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                ),
                child: Center(
                    child: Text(
                  "Masuk",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.remove('nbi');
                await prefs.remove('nama');
                await prefs.remove('kelas');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
              child: Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent,
                ),
                child: Center(
                    child: Text(
                  "Keluar",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
