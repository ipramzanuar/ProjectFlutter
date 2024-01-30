import 'package:aktivitas1/halaman1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanProfil extends StatefulWidget {
  const HalamanProfil({super.key});

  @override
  State<HalamanProfil> createState() => _HalamanProfilState();
}

class _HalamanProfilState extends State<HalamanProfil> {
  Future<void> launchLink(String url, {bool isNewTab = true}) async {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: isNewTab ? '_blank' : '_self',
    );
  }

  // final Uri _url =
  //     Uri.parse('https://instagram.com/_taamaaa_?igshid=OGQ5ZDc2ODk2ZA==');

  String? nbi;
  String? nama;
  //String? kelas;
  String? email;
  String? alamat;
  String? akun;

  void data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _nbi = prefs.getString('nbi');
    final String? _nama = prefs.getString('nama');
    //final String? _kelas = prefs.getString('kelas');
    final String? _email = prefs.getString('email');
    final String? _alamat = prefs.getString('alamat');
    final String? _akun = prefs.getString('akun');

    setState(() {
      nbi = _nbi;
      nama = _nama;
      email = _email;
      alamat = _alamat;
      akun = _akun;
      //kelas = _kelas;
    });
  }

  @override
  void initState() {
    super.initState();
    data();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.white,
                ),
                //SizedBox(height: 20),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                    size: 40.0,
                  ),
                  title: Text(
                    "$nama",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  width: 260,
                  height: 2,
                  color: Colors.white,
                ),
                //SizedBox(height: 10),
                ListTile(
                  leading: Icon(
                    Icons.numbers,
                    color: Colors.red,
                    size: 40.0,
                  ),
                  title: Text(
                    "$nbi",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  width: 260,
                  height: 2,
                  color: Colors.white,
                ),
                //SizedBox(height: 10),
                ListTile(
                  leading: Icon(
                    Icons.schedule,
                    color: Colors.red,
                    size: 40.0,
                  ),
                  title: Text(
                    "$email",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  width: 260,
                  height: 2,
                  color: Colors.white,
                ),
                //SizedBox(height: 10),
                ListTile(
                  leading: Icon(
                    Icons.location_on_outlined,
                    color: Colors.red,
                    size: 40.0,
                  ),
                  title: Text(
                    "$alamat",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  width: 260,
                  height: 2,
                  color: Colors.white,
                ),
                //SizedBox(height: 10),
                ListTile(
                  leading: Icon(
                    Icons.account_box_outlined,
                    color: Colors.red,
                    size: 40.0,
                  ),
                  title: Text(
                    "$akun",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () async {
                    launchLink(
                        'https://instagram.com/_taamaaa_?igshid=OGQ5ZDc2ODk2ZA==',
                        isNewTab: true);
                  },
                ),
                Container(
                  width: 260,
                  height: 2,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.red,
                    size: 40.0,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Halaman1();
                        },
                      ),
                    );
                  },
                ),
                Container(
                  width: 260,
                  height: 2,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
