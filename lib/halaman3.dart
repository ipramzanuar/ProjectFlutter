import 'package:aktivitas1/api/apiController.dart';
import 'package:aktivitas1/widget/ListMovie.dart';
import 'package:flutter/material.dart';

class Halaman3 extends StatefulWidget {
  const Halaman3({super.key});

  @override
  State<Halaman3> createState() => _Halaman3State();
}

class _Halaman3State extends State<Halaman3> {
  Future<List<dynamic>>? _data;

  @override
  void initState() {
    // TODO: implement initState
    _data = ApiController().getdatas();
    super.initState();
  }

  //List movie = [
  // {
  //   "image": "assets/image/toystory.jpeg",
  //   "desc":
  //       "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  // },
  // {
  //   "image": "assets/image/cars.jpg",
  //   "desc":
  //       "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  // },
  // {
  //   "image": "assets/image/elemental.jpeg",
  //   "desc":
  //       "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  // },
  // {
  //   "image": "assets/image/red.jpg",
  //   "desc":
  //       "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  // },
  // {
  //   "image": "assets/image/encanto.jpg",
  //   "desc":
  //       "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  // },
  // {
  //   "image": "assets/image/luca.jpg",
  //   "desc":
  //       "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  // },
  // {
  //   "image": "assets/image/onward.jpeg",
  //   "desc":
  //       "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  // },
  //];
  // bool perubahan = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            FutureBuilder<List<dynamic>>(
              future: _data,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    width: 400,
                    height: 480,
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return listMovie(
                              image:
                                  'https://saiyaapi.site/${snapshot.data![index]['photo']}',
                              desc: snapshot.data![index]['desc']
                              // image: movie[index]["image"],
                              // desc: movie[index]["txt"]
                              );
                        }),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
