// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/routes/app_pages.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../controllers/banksekolah_index_controller.dart';

class BanksekolahIndexView extends GetView<BanksekolahIndexController> {
  const BanksekolahIndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Bank Sekolah ' + controller.nama.value)),
        centerTitle: true,
      ),
      body: Obx(
        () => SmartRefresher(
          controller: controller.refreshController,
          onRefresh: () => controller.onRefresh(),
          child: ListView.separated(
            itemCount: controller.listData.length,
            itemBuilder: (BuildContext context, int index) {
              var item = controller.listData[index];
              return ListTile(
                onTap: () =>
                    Get.toNamed(Routes.FORMPEMBAYARAN_INDEX, arguments: item),
                title: Text("${item['nama_bank']}"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Atas Nama : ${item['nama_rekening']}"),
                    Text("Nomor Rekening : ${item['nomor_rekening']}"),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        ),
      ),
    );
  }
}
