import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:projek_si_23_c/login_2_screen.dart';

import 'login_screen.dart';
import 'splash_screen.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Profil Screen'),
        backgroundColor: Colors.blue,
      ),
      body: ElevatedButton(
        onPressed: () {
          final box = GetStorage();
          box.remove('username');
          Get.offAll(() => Login2Screen());
        },
        child: const Text('Logout'),
      ),
    );
  }
}
