// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:projek_si_23_c/profil_screen.dart';

import 'home_screen.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  State<Login2Screen> createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  bool passwordTampil = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  menampilkanPassword() {
    setState(() {
      passwordTampil = !passwordTampil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "Masukkan Username anda",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextField(
            controller: passwordController,
            obscureText: passwordTampil,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Masukkan Password anda",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: passwordTampil
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            ),
          ),

          // // if else sederhana =>  kondisi ? jika true : jika false

          ElevatedButton(
              onPressed: () {
                final box = GetStorage();
                box.write('username', usernameController.text);
                Get.to(() => ProfilScreen());
              },
              child: Text("Login")),
        ],
      ),
    );
  }
}
