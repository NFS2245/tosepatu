import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:tosepatu/app/routes/app_pages.dart';
import 'package:tosepatu/app/themes/widgets/text_field/register/no_telp_user/no_telp_textfield.dart';

import '../../../../themes/themes/colors_theme.dart';
import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/text_field/register/confirm_password/confirm_textfield.dart';
import '../../../../themes/widgets/text_field/login/email/email_textfields.dart';
import '../../../../themes/widgets/text_field/login/password/password_textfields.dart';
import '../../../../themes/widgets/text_field/register/passwordregis/password_regis_textfield.dart';
import '../../../../themes/widgets/text_field/register/username/username_textfield.dart';
import '../../../api/api.dart';
import 'package:http/http.dart' as http;
import '../../../api/connectapi.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return register();
  }
}

class register extends StatefulWidget {
  const register({
    Key? key,
  }) : super(key: key);
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController idUserC = TextEditingController();
  TextEditingController noTelpUserC = TextEditingController();
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController password2C = TextEditingController();

  Future<void> _register() async {
    Uri url1 = Uri.parse(API.signUp);
    final responseRegister = await http.post(url1, body: {
      'no_telp_user': noTelpUserC.text,
      'username_user': usernameC.text,
      'password_user': passwordC.text,
    });
    print(responseRegister.body);
    var dataRegister = json.decode(responseRegister.body);
    if (dataRegister == "Success") {
      Fluttertoast.showToast(
          msg: "Register Success",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.green,
          textColor: Colors.white);
      Get.toNamed('/login');
    } else {
      Fluttertoast.showToast(
          msg: "Username sudah terdaftar",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white);
    }
  }

  @override
  void dispose() {
    Get.delete<RegisterController>();
    super.dispose();
  }

  Widget build(BuildContext context) {
    RegisterController signUp = Get.put(RegisterController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Daftar',
                  style: FontsThemes.titleLarge.copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 44),
            Column(
              children: [
                UsernameTextField(
                  controller: usernameC,
                ),
                const SizedBox(height: 16),
                NoTelpUserTextField(
                  controller: noTelpUserC,
                ),
                const SizedBox(height: 16),
                PasswordTextFieldNoObscure(
                  controller: passwordC,
                ),
                const SizedBox(height: 16),
                ConfirmTextField(
                  controller: password2C,
                ),
              ],
            ),
            const SizedBox(height: 43),
            Container(
              width: 330,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  if (usernameC.text.isEmpty) {
                    Get.snackbar("Error", "Username tidak boleh kosong");
                  } else if (noTelpUserC.text.isEmpty) {
                    Get.snackbar("Error", "Nomer Telepon tidak boleh kosong");
                  } else if (passwordC.text.isEmpty) {
                    Get.snackbar("Error", "Password tidak boleh kosong");
                  } else if (password2C.text.isEmpty) {
                    Get.snackbar(
                        "Error", "Konfirmasi Password tidak boleh kosong");
                  } else if (passwordC.text != password2C.text) {
                    Get.snackbar("Error", "Password tidak sama");
                  } else if (passwordC.text.isEmpty &&
                      password2C.text.isEmpty &&
                      usernameC.text.isEmpty &&
                      noTelpUserC.text.isEmpty) {
                    Get.snackbar("Error", "data tidak boleh kosong");
                  } else {
                    _register();
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: PrimaryBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0)),
                ),
                child: Text(
                  "Daftar",
                  style:
                      FontsThemes.buttonTextStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                GestureDetector(
                    onTap: () {
                      Get.offNamed(Routes.LOGIN);
                    },
                    child: Text("Sudah Punya Akun",
                        style: FontsThemes.buttonTextStyle
                            .copyWith(color: PrimaryBlue))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
