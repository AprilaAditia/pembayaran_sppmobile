// ignore_for_file: unnecessary_overrides, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/data/banksekolah_provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BanksekolahIndexController extends GetxController {
  var itemTagihan = Get.arguments;
  var nama = "".obs;

  var listData = [].obs;
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  void onRefresh() async {
    refreshController.refreshCompleted();
    getData();
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() {
    BanksekolahProvider().getAll().then((response) {
      if (response.statusCode == 200) {
        var ResponseBody = response.body;
        var data = ResponseBody['data'];
        listData.assignAll(data);
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
