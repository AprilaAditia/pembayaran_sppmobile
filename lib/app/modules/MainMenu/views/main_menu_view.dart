// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/routes/app_pages.dart';
import 'package:sp_util/sp_util.dart';

import '../controllers/main_menu_controller.dart';

class MainMenuView extends GetView<MainMenuController> {
  const MainMenuView({super.key});
  @override
  Widget build(BuildContext context) {
    var buttonsStyle = ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 7, 14, 142),
      fixedSize: Size(Get.width - 70, 40),
    );
    var spaceButton = 10.0;
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
          'SEKOLAH ALAM INDRAMAYU',
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "SEKOLAH ALAM INDRAMAYU",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    " U B A H  P R O F I L ",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonsStyle,
                ),
                SizedBox(height: spaceButton),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    " D A T A  P E M B A Y A R A N ",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonsStyle,
                ),
                SizedBox(height: spaceButton),
                ElevatedButton(
                  onPressed: () {
                    SpUtil.clear();
                    Get.offAllNamed(Routes.HOME);
                  },
                  child: Text(
                    " L O G O U T ",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: buttonsStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
