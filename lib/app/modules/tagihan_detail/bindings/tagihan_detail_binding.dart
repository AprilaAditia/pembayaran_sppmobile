import 'package:get/get.dart';

import '../controllers/tagihan_detail_controller.dart';

class TagihanDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TagihanDetailController>(
      () => TagihanDetailController(),
    );
  }
}
