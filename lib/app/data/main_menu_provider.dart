import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/data/base_provider.dart';
import 'package:sp_util/sp_util.dart';

class MainMenuProvider extends BaseProvider {
  Future<Response> getData() {
    return get('$myHttpServer/beranda', headers: myHttpHeader);
  }
}
