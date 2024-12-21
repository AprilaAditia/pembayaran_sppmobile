// ignore_for_file: unnecessary_overrides, non_constant_identifier_names, unused_local_variable, prefer_final_fields, unused_element

import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/data/tagihan_provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TagihanController extends GetxController {
  var listData = [].obs;
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  void onRefresh() async {
    getData();
    // if failed,use refreshFailed()
    refreshController.refreshCompleted();
  }

  void getData() {
    TagihanProvider().getAll().then((Response response) {
      //
      if (response.statusCode == 200) {
        var ResponseBody = response.body;
        var data = ResponseBody['data'];
        listData.assignAll(data);
      }
    });
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
