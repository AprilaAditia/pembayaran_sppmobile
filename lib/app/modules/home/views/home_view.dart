// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.only(
            left: 6,
            top: 3,
            bottom: 3,
          ),
          child: Image.asset("images/Logo.png"),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'PEMBAYARAN SPP',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset("images/user.png"),
                Text(
                  "SPP ONLINE",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Selamat Datang di Aplikasi Pembayaran \n        Sumbangan Pembangunan Pendidikan",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () => controller.onTapLogin(),
                  child: Text(
                    "L O G I N",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 7, 14, 142),
                    fixedSize: Size(Get.width - 70, 40),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
