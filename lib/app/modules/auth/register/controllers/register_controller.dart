import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  late TextEditingController idUserC;
  late TextEditingController noTelpUserC;
  late TextEditingController usernameC;
  late TextEditingController passwordC;
  late TextEditingController password2C;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    idUserC = TextEditingController();
    noTelpUserC = TextEditingController();
    usernameC = TextEditingController();
    passwordC = TextEditingController();
    password2C = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    idUserC = TextEditingController();
    noTelpUserC = TextEditingController();
    usernameC = TextEditingController();
    passwordC = TextEditingController();
    password2C = TextEditingController();
  }

  void increment() => count.value++;
}
