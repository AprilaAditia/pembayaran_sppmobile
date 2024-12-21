import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class MainMenuProvider extends GetConnect {
  Future<Response> getData() {
    var myHeader = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${SpUtil.getString('token')!}', // Tambahkan spasi setelah "Bearer"
    };
    return get('http://192.168.1.102:8000/api/beranda', headers: myHeader);
  }
}
