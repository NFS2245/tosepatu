import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tosepatu/app/routes/app_pages.dart';
import '../../../../themes/themes/colors_theme.dart';
import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/text_field/login/email/email_textfields.dart';
import '../../../../themes/widgets/text_field/login/password/password_textfields.dart';
import '../../../api/api.dart';
import '../../../main_page/home/views/home_view.dart';
import '../../../models/model_test.dart';
import '../controllers/login_controller.dart';
import 'package:tosepatu/app/modules/api/connectapi.dart';
import 'package:http/http.dart' as http;

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return login();
  }
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

enum loginstatus { notSignIn, signIn }

class _loginState extends State<login> {
  LoginController authController = Get.put(LoginController());
  ConnectApi logindata = Get.put(ConnectApi());
  loginstatus _loginstatus = loginstatus.notSignIn;

  Future loginData() async {
    var url = Uri.parse(API.signIn);
    var responseLogin = await http.post(url, body: {
      'username_user': authController.usernameC.text.toString(),
      'password_user': authController.passwordC.text,
    });
    UserData userData = UserData.fromMap(jsonDecode(responseLogin.body));
    Map<String, dynamic> map = jsonDecode(responseLogin.body);
    String status = map['status'];

    if (status == "Success") {
      String id_user = userData.data![0].idUser;
      String no_telp_user = userData.data![0].noTelpUser;
      String username = userData.data![0].usernameUser;
      setState(() {
        _loginstatus = loginstatus.signIn;
        savpref(status, id_user, no_telp_user, username);
      });
      authController.usernameC.clear();
      authController.passwordC.clear();
      Get.snackbar(
        "Success",
        "Login Success",
        duration: Duration(seconds: 1),
      );
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.snackbar(
        "Error",
        "Masukkan Username dan Password yang benar",
        duration: Duration(seconds: 1),
      );
    }
  }

  savpref(
    String status,
    String idUser,
    String noTelpUser,
    String usernameUser,
  ) async {
    print('dipanggil');
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setString('status', status);
      pref.setString('id_user', idUser);
      pref.setString('no_telp_user', noTelpUser);
      pref.setString('username_user', usernameUser);
    });
  }

  var status;
  getPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      status = pref.getString('status');
      _loginstatus =
          status == 'Success' ? loginstatus.signIn : loginstatus.notSignIn;
    });
  }

  signOut() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setString("status", null.toString());
      _loginstatus = loginstatus.notSignIn;
    });
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (_loginstatus) {
      case loginstatus.notSignIn:
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100),
                    Padding(
                      padding: const EdgeInsets.only(left: 105),
                      child: Text(
                        'Masuk',
                        style: FontsThemes.titleLarge
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 56,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offNamed(Routes.REGISTER);
                      },
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 56.0),
                      child: Text(
                        'Daftar',
                        style: FontsThemes.buttonTextStyle
                            .copyWith(color: PrimaryBlue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 43),
                Column(
                  children: [
                    EmailTextFields(
                      controller: authController.usernameC,
                    ),
                    const SizedBox(height: 16),
                    PasswordTextFields(
                      controller: authController.passwordC,
                    ),
                    const SizedBox(height: 168),
                    Container(
                      width: 330,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          if (authController.usernameC.text.isEmpty) {
                            Get.snackbar(
                                "Error", "Username tidak boleh kosong");
                          } else if (authController.passwordC.text.isEmpty) {
                            Get.snackbar(
                                "Error", "Password tidak boleh kosong");
                          } else if (authController.usernameC.text.isEmpty &&
                              authController.passwordC.text.isEmpty) {
                            Get.snackbar("Error",
                                "Username dan Password tidak boleh kosong");
                          } else {
                            loginData();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: PrimaryBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0)),
                        ),
                        child: Text(
                          "Masuk",
                          style: FontsThemes.buttonTextStyle
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("",
                            style: FontsThemes.buttonTextStyle
                                .copyWith(color: PrimaryBlue))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      case loginstatus.signIn:
        return HomeView(signOut: signOut);
    }
  }
}
