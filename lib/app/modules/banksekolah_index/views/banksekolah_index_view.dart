import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/banksekolah_index_controller.dart';

class BanksekolahIndexView extends GetView<BanksekolahIndexController> {
  const BanksekolahIndexView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BanksekolahIndexView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BanksekolahIndexView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
