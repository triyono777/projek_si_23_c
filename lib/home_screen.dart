// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Kelas SI 23 C"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Text(
            "halo",
            style: TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.sunny),
              Text("halo"),
            ],
          ),
          TextField(),
          ElevatedButton(
            onPressed: () {},
            child: Text("Login"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
