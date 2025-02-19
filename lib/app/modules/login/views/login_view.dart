// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // Wrap the content in SingleChildScrollView
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Halo User! 👋",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Selamat Datang Di Aplikasi Pembayaran Sumbangan Pembangunan Pendidikan",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 25),
              TextField(
                controller: controller.txtEmail,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller.txtPassword,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => controller.auth(),
                child: Text(
                  "L O G I N",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 14, 142),
                  fixedSize: Size(Get.width, 50),
                ),
              ),
              SizedBox(height: 30),
              /* Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 5,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "  Or  ",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 5,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ), */
              SizedBox(height: 20),
              /* Center(
                child: Column(
                  children: [
                    Text(
                      "Login  With  Social  Media",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/facebook.png", width: 50),
                        SizedBox(width: 15),
                        Image.asset("images/google.png", width: 30),
                        SizedBox(width: 15),
                        Image.asset("images/twitter.png", width: 30),
                        SizedBox(width: 15),
                      ],
                    ), 
                  ],
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }
}
