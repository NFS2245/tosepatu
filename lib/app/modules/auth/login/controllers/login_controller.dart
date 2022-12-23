import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  late TextEditingController emailC;
  late TextEditingController passwordC;

  @override
  void onInit() {
    super.onInit();
    emailC = TextEditingController();
    passwordC = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailC = TextEditingController();
    passwordC = TextEditingController();
  }
}
