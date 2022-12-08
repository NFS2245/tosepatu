import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      body: Center(
        child: Text(
          'AkunView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
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
