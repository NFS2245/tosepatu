import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';

import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/navigation/bottom_navigation.dart';
import '../controllers/akun_controller.dart';

class AkunView extends GetView<AkunController> {
  const AkunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun',
            style: FontsThemes.titlePage.copyWith(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        Container(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 122,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      PrimaryBlue,
                      CyanBlue,
                    ],
                  ),
                ))),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 500,
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Akun',
                  style: FontsThemes.titlePage.copyWith(color: Colors.black)),
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Ubah Password',
                      style: FontsThemes.ubahemailText
                          .copyWith(color: Colors.black)),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: (() {
                        Get.toNamed("/ubahpassword");
                      }),
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.black)),
                ),
              ],
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Ubah Username & Email',
                      style: FontsThemes.ubahemailText
                          .copyWith(color: Colors.black)),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        Get.toNamed('/confirm');
                      },
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.black)),
                )
              ],
            ),
          ]),
        ),
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
            ),
          ],
        ),
        child: MainBottomNavigation(),
      ),
    );
  }
}
