//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Embutido extends StatelessWidget {
  const Embutido({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 270,
              width: 1000,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/Emp.jpg'),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            height: 300,
            width: 1000,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              color: Color.fromARGB(255, 242, 174, 39),
            ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    child: Text(
                      "Adobo",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 6.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
