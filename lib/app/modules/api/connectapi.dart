import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tosepatu/app/modules/api/api.dart';
import 'package:tosepatu/app/routes/app_pages.dart';
import 'package:tosepatu/app/modules/models/model_test.dart';

import '../auth/login/controllers/login_controller.dart';

class ConnectApi {
  LoginController authController = Get.put(LoginController());

  // Future loginData() async {
  //   var url = Uri.parse(API.signIn);
  //   var responseLogin = await http.post(url, body: {
  //     'email': authController.emailC.text.toString(),
  //     'password': authController.passwordC.text,
  //   });

  //   Map<String, dynamic> map = jsonDecode(responseLogin.body);
  //   String status = map['status'];
  //   if (status == "Success") {
  //     authController.emailC.clear();
  //     authController.passwordC.clear();
  //     Get.snackbar(
  //       "Succes",
  //       "Login Berhasil",
  //       duration: Duration(seconds: 2),
  //     );
  //     Get.offAllNamed(Routes.HOME);
  //   } else {
  //     Get.snackbar(
  //       "Error",
  //       "Masukkan Email dan Password yang benar",
  //       duration: Duration(seconds: 2),
  //     );
  //   }
  // }
}
