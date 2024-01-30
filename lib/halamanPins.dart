import 'package:aktivitas1/BottomNavigator.dart';
//import 'package:aktivitas1/halaman1.dart';
//import 'package:aktivitas1/halaman2.dart';
import 'package:flutter/material.dart';
import 'package:aktivitas1/widget/FieldCustom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HalamanPins extends StatefulWidget {
  const HalamanPins({super.key});

  @override
  State<HalamanPins> createState() => _HalamanPinsState();
}

class _HalamanPinsState extends State<HalamanPins> {
  final formKey = GlobalKey<FormState>();

  TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your PIN',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                'Please enter your pin that you have created',
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15.0),
              Icon(
                Icons.lock_outline_rounded,
                size: 40,
                color: Colors.red,
              ),
              // SizedBox(
              //   height: 8,
              // ),
              textFieldCustom(' ', pinController),
              //textFieldCustom('Masukkan Kelas Praktikum', kelasController),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setString('pin', pinController.text);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (build) {
                            return BottomNavigationScreen();
                          },
                        ),
                      );
                    }
                  },
                  child: Center(
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: Icon(
                        Icons.lock_open_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
