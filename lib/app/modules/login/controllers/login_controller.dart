// ignore_for_file: avoid_print, unused_local_variable, empty_statements, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/data/login_provider.dart';
import 'package:pembayaran_sppmobile/app/routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void auth() {
    String email = txtEmail.text;
    String password = txtPassword.text;

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Error",
        "Email dan Password Tidak Boleh Kosong",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      EasyLoading.show();
      var data = {
        "email": email,
        "password": password,
      };
      LoginProvider().auth(data).then((Value) {
        if (Value.statusCode == 200) {
          Get.snackbar(
            "Success",
            "Login Berhasil",
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
          /*Get.offAllNamed(Routes.MAIN_MENU);*/
        } else {
          Get.snackbar(
            "Error",
            "Login Gagal",
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
        EasyLoading.dismiss();
      });
      /*  */
    }
  }
}
