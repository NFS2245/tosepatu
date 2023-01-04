import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tosepatu/app/routes/app_pages.dart';
import '../../../../themes/themes/colors_theme.dart';
import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/text_field/login/email/email_textfields.dart';
import '../../../../themes/widgets/text_field/login/password/password_textfields.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                    style: FontsThemes.titleLarge.copyWith(color: Colors.black),
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
              children: [EmailTextFields()],
            ),
            const SizedBox(height: 16),
            Column(
              children: [PasswordTextFields()],
            ),
            const SizedBox(height: 168),
            Container(
              width: 330,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed("/home");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: PrimaryBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0)),
                ),
                child: Text(
                  "Masuk",
                  style:
                      FontsThemes.buttonTextStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                GestureDetector(
                    onTap: () {
                      Get.offNamed(Routes.CEKEMAIL);
                    },
                    child: Text("Lupa Sandi",
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
