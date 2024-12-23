import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/data/base_provider.dart';

class BanksekolahProvider extends BaseProvider {
  Future<Response> getAll() {
    return get('$myHttpServer/banksekolah', headers: myHttpHeader);
  }
}
