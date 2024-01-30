import 'package:flutter/material.dart';

Padding textFieldCustom(ttl2, ctrl2) {
  return Padding(
    padding: const EdgeInsetsDirectional.only(top: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ttl2,
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(height: 7),
        Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            controller: ctrl2,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Input tidak boleh kosong!';
              }
              return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
