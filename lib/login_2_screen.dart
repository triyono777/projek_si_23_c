// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  State<Login2Screen> createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  bool passwordTampil = true;

  menampilkanPassword() {
    setState(() {
      passwordTampil = !passwordTampil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(),
          TextField(
            obscureText: passwordTampil,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Masukkan Password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: passwordTampil
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            ),
          ),

          // // if else sederhana =>  kondisi ? jika true : jika false

          ElevatedButton(
              onPressed: () {
                menampilkanPassword();
              },
              child: Text("tampil password")),
        ],
      ),
    );
  }
}
