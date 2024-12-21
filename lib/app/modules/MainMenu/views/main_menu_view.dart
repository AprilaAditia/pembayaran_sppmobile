// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace

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
    var textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    var sizeMenu = 70.0;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 245, 250),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: Get.width,
                padding: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                  bottom: 25,
                ),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Halo Selamat Datang , ${controller.totalTagihanBelumBayar}",
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                SpUtil.getString('name')!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 50,
                            child: Image.asset("images/Avatar.png"),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Stack(
                        children: [
                          Container(
                            width: Get.width,
                            height: 180,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 82, 85, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            left: 25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SEKOLAH ALAM INDRAMAYU",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                Text(
                                  "Jl. Gatot Subroto, Karangmalang, Kec. Indramayu, \n Kabupaten Indramayu, Jawa Barat",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 227, 221, 221),
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -30,
                            left: -30,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(49, 249, 249, 249),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            right: -40,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(49, 249, 249, 249),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                              elevation: 0,
                              child: InkWell(
                                onTap: () => Get.toNamed(Routes.TAGIHAN),
                                child: Column(
                                  children: [
                                    Container(
                                      width: sizeMenu,
                                      height: sizeMenu,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            51, 34, 149, 243),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.receipt,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text("TAGIHAN")
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 0,
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      width: sizeMenu,
                                      height: sizeMenu,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            79, 243, 33, 33),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.school,
                                          size: 30,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    Text("SISWA")
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 0,
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      width: sizeMenu,
                                      height: sizeMenu,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            51, 34, 149, 243),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.info_outline,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Text("INFORMASI")
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 0,
                              child: InkWell(
                                onTap: () {
                                  SpUtil.clear();
                                  Get.offAllNamed(Routes.HOME);
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: sizeMenu,
                                      height: sizeMenu,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            79, 243, 33, 33),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.exit_to_app,
                                          size: 30,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    Text("LOG OUT")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " DATA TAGIHAN ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " status ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.listData.length,
                        itemBuilder: (BuildContext context, int index) {
                          var item = controller.listData[index];

                          return ListTile(
                            onTap: () {},
                            title: Text(item["nama"]),
                            subtitle: Text(item["nisn"]),
                            leading: Container(
                              color: Colors.blue,
                              width: 50,
                              height: 50,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blue,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
