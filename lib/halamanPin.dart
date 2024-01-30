import 'package:aktivitas1/BottomNavigator.dart';
import 'package:flutter/material.dart';

class HalamanPin extends StatefulWidget {
  const HalamanPin({super.key});

  @override
  State<HalamanPin> createState() => _HalamanPinState();
}

class _HalamanPinState extends State<HalamanPin> {
  String correctPin = '2023';
  TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
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
              SizedBox(height: 20.0),
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1.5,
                  ),
                ),
                child: TextFormField(
                  controller: pinController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  if (pinController.text == correctPin) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return BottomNavigationScreen();
                      }),
                    );
                  } else {
                    showAlertDialog(context);
                  }
                },
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
            ],
          ),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'PIN Salah',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
          content: Text('Please enter the correct PIN.',
              textAlign: TextAlign.center),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Center(
                child: Text(
                  'OK',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
