import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tosepatu/app/themes/widgets/text_field/checkout/name/name_textfields.dart';
import 'package:tosepatu/app/themes/widgets/text_field/login/email/email_textfields.dart';
import 'package:tosepatu/app/themes/widgets/text_field/login/password/confirmnewpassword.dart';
import 'package:tosepatu/app/themes/widgets/text_field/login/password/newpassword_textfield.dart';
import 'package:tosepatu/app/themes/widgets/text_field/login/password/oldpassword_textfields.dart';
import 'package:tosepatu/app/themes/widgets/text_field/login/password/password_textfields.dart';

import '../../../themes/themes/colors_theme.dart';
import '../../../themes/themes/font_themes.dart';
import '../controllers/cekemail_controllers.dart';

class CekEmailView extends GetView<CekEmailController> {
  const CekEmailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ubah Kata Sandi'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.center,
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20)),
            EmailTextFields(),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              width: 330,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/newpassword');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: PrimaryBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0)),
                ),
                child: Text(
                  "Cek Email",
                  style:
                      FontsThemes.buttonTextStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
