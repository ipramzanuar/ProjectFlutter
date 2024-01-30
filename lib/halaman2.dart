import 'package:aktivitas1/halaman3.dart';
import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  const Halaman2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Video Prime",
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (build) {
                      return Halaman3();
                    }),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-20810-a07syh_9331bd0a.jpeg?region=0,0,450,450'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  margin: EdgeInsets.all(15),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (build) {
                      return Halaman3();
                    }),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/id/6/69/Woodytoystory2.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  margin: EdgeInsets.all(15),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-20810-a07syh_9331bd0a.jpeg?region=0,0,450,450'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  margin: EdgeInsets.all(15),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/id/6/69/Woodytoystory2.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  margin: EdgeInsets.all(15),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-20810-a07syh_9331bd0a.jpeg?region=0,0,450,450'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  margin: EdgeInsets.all(15),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/id/6/69/Woodytoystory2.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  margin: EdgeInsets.all(15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
