// ignore_for_file: unused_local_variable

import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  Future<Response> auth(var data) {
    var myHeader = {
      'Accept': 'application/json',
    };
    return post('http://10.0.141.209:8000/api/login', data, headers: myHeader);
  }
}
