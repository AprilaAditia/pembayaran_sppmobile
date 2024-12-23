// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/formpembayaran_index_controller.dart';

class FormpembayaranIndexView extends GetView<FormpembayaranIndexController> {
  const FormpembayaranIndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Pembayaran'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " Silahkan Isi Form Pembayaran ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                decoration: const InputDecoration(
                  labelText: "Nomor Rekening Pengirim",
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Nomor Rekening Tujuan",
                ),
              ),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Tanggal Bayar",
                ),
              ),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Jumlah Yang Bayar",
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Lakukan Pembayaran",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 14, 142),
                  fixedSize: Size(Get.width, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
