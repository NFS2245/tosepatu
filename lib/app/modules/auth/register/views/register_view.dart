import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tosepatu/app/routes/app_pages.dart';

import '../../../../themes/themes/colors_theme.dart';
import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/text_field/login/register/confirm_password/confirm_textfield.dart';
import '../../../../themes/widgets/text_field/login/email/email_textfields.dart';
import '../../../../themes/widgets/text_field/login/password/password_textfields.dart';
import '../../../../themes/widgets/text_field/login/register/username/username_textfield.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              children: [UsernameTextField()],
            ),
            const SizedBox(height: 16),
            Column(
                // children: [EmailTextFields()],
                ),
            const SizedBox(height: 16),
            Column(
              children: [PasswordTextFieldNoObscure()],
            ),
            const SizedBox(height: 16),
            Column(
              children: [ConfirmTextField()],
            ),
            const SizedBox(height: 43),
            Container(
              width: 330,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
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
