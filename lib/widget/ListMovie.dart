import 'package:flutter/material.dart';

Center listMovie({required image, required desc}) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 290,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 100, 130).withOpacity(0.6),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0xfff0000),
              blurRadius: 20,
              offset: Offset(0, 0),
              spreadRadius: -10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 270,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "Play",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              // Center(
              //   child: GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         perubahan = !perubahan;
              //       });
              //     },
              //     child: Container(
              //       width: 250,
              //       height: 40,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(5),
              //           color: !perubahan ? Colors.white : Colors.blue),
              //       child: Center(
              //         child: Text(
              //           "Play",
              //           style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.bold,
              //               color: !perubahan
              //                   ? Colors.black
              //                   : Colors.white),
              //           textAlign: TextAlign.justify,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  desc,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
// 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP7sx3_EYK7bhLhItaKglPlntAG9qNVQQIHg&usqp=CAU'