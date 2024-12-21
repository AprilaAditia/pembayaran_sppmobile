// ignore_for_file: unused_local_variable, unnecessary_brace_in_string_interps

import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/data/base_provider.dart';

class LoginProvider extends BaseProvider {
  Future<Response> auth(var data) {
    return post('$myHttpServer/login', data, headers: myHttpHeader);
  }
}
