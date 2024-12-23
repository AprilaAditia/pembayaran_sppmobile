import 'package:get/get.dart';

import '../controllers/formpembayaran_index_controller.dart';

class FormpembayaranIndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormpembayaranIndexController>(
      () => FormpembayaranIndexController(),
    );
  }
}
