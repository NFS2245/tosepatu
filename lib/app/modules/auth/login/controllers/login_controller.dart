import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  late TextEditingController usernameC;
  late TextEditingController passwordC;

  @override
  void onInit() {
    super.onInit();
    usernameC = TextEditingController();
    passwordC = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameC = TextEditingController();
    passwordC = TextEditingController();
  }
}
