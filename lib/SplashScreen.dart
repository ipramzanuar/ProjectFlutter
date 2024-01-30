import 'package:aktivitas1/RegisterScreen.dart';
import 'package:aktivitas1/halaman1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? nbi = prefs.getString('nbi');
      if (nbi != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (build) {
              return Halaman1();
            },
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (build) {
              return RegisterScreen();
            },
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xfff3987B2),
        child: Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/pab2.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text('PRAKTIKUM PAB 2023',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
          ],
        ),
        ),
        // child: Center(
        //   child: Image.asset(
        //     'assets/image/pab2.png',
        //     scale: 2,
        //   ),
        // ),
      ),
    );
  }
}
