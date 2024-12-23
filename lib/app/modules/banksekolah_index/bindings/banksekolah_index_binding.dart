import 'package:get/get.dart';

import '../controllers/banksekolah_index_controller.dart';

class BanksekolahIndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BanksekolahIndexController>(
      () => BanksekolahIndexController(),
    );
  }
}
