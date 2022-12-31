import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tosepatu/app/modules/api/api.dart';

import 'package:tosepatu/app/routes/app_pages.dart';
import 'package:tosepatu/app/modules/models/model_test.dart';

import '../auth/login/controllers/login_controller.dart';
import 'package:tosepatu/app/modules/auth/register/controllers/register_controller.dart';

import '../checkout/pickup/controllers/pickup_controller.dart';

class ConnectApi {
  LoginController authController = Get.put(LoginController());
  RegisterController signUp = Get.put(RegisterController());

  Future register() async {
    try {
      var url1 = Uri.parse(API.signUp);
      final responseRegister = await http.post(url1, body: {
        'id_user': signUp.idUserC.text,
        'no_telp_user': signUp.noTelpUserC.text,
        'username': signUp.usernameC.text,
        'password': signUp.passwordC.text,
      });
      print(responseRegister.body);
      var dataRegister = json.decode(responseRegister.body);
      if (dataRegister == "Success") {
        signUp.idUserC.clear();
        signUp.noTelpUserC.clear();
        signUp.usernameC.clear();
        signUp.passwordC.clear();
        Get.snackbar(
          "Success",
          "Register Success",
          duration: Duration(seconds: 1),
        );
        Get.toNamed('/login');
      } else {
        Get.snackbar(
          "Error",
          "Username sudah terdaftar",
          duration: Duration(seconds: 1),
        );
      }
    } catch (e) {}
  }
}

// class ApiPickUp {
//   PickupController pickUp = Get.put(PickupController());
//   Future pickup() async {
//     try {
//       var url1 = Uri.parse(API.pickUp);
//       final responsepickUp = await http.post(url1, body: {
//         'id_pesanan': pickUp.idPesananC.text,
//         'uid_Pengiriman': pickUp.uidPengirimanC.text,
//         'uid_user': pickUp.uidUserC.text,
//         'catatan': pickUp.catatanC.text,
//         'grand_total': pickUp.grandTotalC.text,
//         'no_telp': pickUp.noTelpC.text,
//         'status_pesanan': pickUp.statusPesananC.text,
//         'alamat': pickUp.alamatC.text,
//         'uid_pesanan': pickUp.uidPesananC.text,
//         'uid_layanan': pickUp.uidLayananC.text,
//         'nama': pickUp.namaC.text,
//         'qty': pickUp.qtyC.text,
//         'harga_layanan': pickUp.hargaLayananC.text,
//         'sub_total': pickUp.subTotalC.text,
//       });
//       print(responsepickUp.body);
//       var dataRegister = json.decode(responsepickUp.body);
//       if (dataRegister == "Success") {
//         pickUp.idPesananC.clear();
//         pickUp.uidPengirimanC.clear();
//         pickUp.uidUserC.clear();
//         pickUp.catatanC.clear();
//         pickUp.grandTotalC.clear();
//         pickUp.noTelpC.clear();
//         pickUp.statusPesananC.clear();
//         pickUp.alamatC.clear();
//         pickUp.uidPesananC.clear();
//         pickUp.uidLayananC.clear();
//         pickUp.namaC.clear();
//         pickUp.qtyC.clear();
//         pickUp.hargaLayananC.clear();
//         pickUp.subTotalC.clear();
//         Get.snackbar(
//           "Success",
//           "Pesan Berhasil",
//           duration: Duration(seconds: 1),
//         );
//         Get.toNamed('/pesanan');
//       } else {
//         Get.snackbar(
//           "Error",
//           "",
//           duration: Duration(seconds: 1),
//         );
//       }
//     } catch (e) {}
//   }
// }
