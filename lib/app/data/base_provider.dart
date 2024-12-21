import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class BaseProvider extends GetConnect {
  var myHttpServer = "http://192.168.1.102:8000/api";
  var myHttpHeader = {
    'Accept': 'application/json',
    'Authorization': 'Bearer ${SpUtil.getString('token')!}',
  };
}
