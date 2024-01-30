import 'package:aktivitas1/halaman1.dart';
import 'package:flutter/material.dart';
import 'package:aktivitas1/widget/FieldCustom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController nbiController = TextEditingController();
  //TextEditingController kelasController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController akunController = TextEditingController();

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
              Image.asset(
                'assets/image/pab.png',
                scale: 6,
              ),
              Text('WELCOME',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('Praktikum PAB 2023',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              // SizedBox(
              //   height: 8,
              // ),
              textFieldCustom('Masukkan Nama', namaController),
              textFieldCustom('Masukkan NBI', nbiController),
              textFieldCustom('Masukkan email', emailController),
              textFieldCustom('Masukkan Alamat', alamatController),
              textFieldCustom('Masukkan Akun Instagram', akunController),
              //textFieldCustom('Masukkan Kelas Praktikum', kelasController),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setString('nbi', nbiController.text);
                      await prefs.setString('nama', namaController.text);
                      //await prefs.setString('kelas', kelasController.text);
                      await prefs.setString('email', emailController.text);
                      await prefs.setString('alamat', alamatController.text);
                      await prefs.setString('akun', akunController.text);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (build) {
                            return Halaman1();
                          },
                        ),
                      );
                    }
                  },
                  child: Center(
                    child: Text("Daftar"),
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
