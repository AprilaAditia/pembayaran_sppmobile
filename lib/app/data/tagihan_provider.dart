import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/data/base_provider.dart';

class TagihanProvider extends BaseProvider {
  Future<Response> getAll() {
    return get('$myHttpServer/tagihan', headers: myHttpHeader);
  }
}
