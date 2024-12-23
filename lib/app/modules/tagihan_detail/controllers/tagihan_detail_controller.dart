import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/routes/app_pages.dart';

class TagihanDetailController extends GetxController {
  //TODO: Implement TagihanDetailController
  var itemTagihan = Get.arguments;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onTapPilihMetodeBayar(var metode, var item) {
    if (metode == 'transfer') {
      Get.toNamed(Routes.BANKSEKOLAH_INDEX, arguments: item);
    }
  }

  void increment() => count.value++;
}
