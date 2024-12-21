// ignore_for_file: unnecessary_overrides, unused_local_variable

import 'package:get/get.dart';
import 'package:pembayaran_sppmobile/app/data/main_menu_provider.dart';

class MainMenuController extends GetxController {
  var totalTagihanBelumBayar = "0".obs;
  var listData = [].obs;

  @override
  void onInit() {
    getDataMenu();
    super.onInit();
  }

  void getDataMenu() {
    listData.clear();
    MainMenuProvider().getData().then((value) {
      var responseBody = value.body;
      var data = responseBody['data'];

      // Ambil total tagihan belum dibayar
      totalTagihanBelumBayar.value =
          data['total_tagihan_belum_bayar'].toString();

      // Ambil data siswa
      var dataSiswa = data['data_siswa'] ?? [];
      if (dataSiswa is List) {
        // Jika dataSiswa adalah List
        for (var element in dataSiswa) {
          if (element is Map &&
              element.containsKey('id') &&
              element.containsKey('nisn') &&
              element.containsKey('nama')) {
            var siswa = {
              'id': element['id'],
              'nama': element['nama'],
              'nisn': element['nisn'] ?? '-',
            };
            listData.add(siswa);
          } else {
            print("Unexpected value in data_siswa: $element");
          }
        }
      } else if (dataSiswa is Map) {
        // Jika dataSiswa adalah Map (perlu menangani objek individual)
        if (dataSiswa.containsKey('id') && dataSiswa.containsKey('nama')) {
          var siswa = {
            'id': dataSiswa['id'],
            'nama': dataSiswa['nama'],
            'nisn': dataSiswa['nisn'],
          };
          listData.add(siswa);
        } else {
          print("Unexpected data format in data_siswa: $dataSiswa");
        }
      } else {
        print("Unexpected format for data_siswa: $dataSiswa");
      }
    }).catchError((error) {
      // Error handling jika request gagal
      print("Error fetching menu data: $error");
    });
  }
}
