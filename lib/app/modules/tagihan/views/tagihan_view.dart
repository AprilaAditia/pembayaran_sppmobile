// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/routes/app_pages.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../controllers/tagihan_controller.dart';

class TagihanView extends GetView<TagihanController> {
  const TagihanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Tagihan'),
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
                    Get.toNamed(Routes.TAGIHAN_DETAIL, arguments: item),
                title: Text("${item['bulan']} ${item['tahun']}"),
                subtitle: Text("Status Tagihan: ${item['status']}"),
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
