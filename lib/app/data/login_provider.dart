// ignore_for_file: unused_local_variable

import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  Future<Response> auth(var data) {
    var myHeader = {
      'Accept': 'application/json',
    };
    return post('http://192.168.1.100:8000/api/login', data, headers: myHeader);
  }
}
