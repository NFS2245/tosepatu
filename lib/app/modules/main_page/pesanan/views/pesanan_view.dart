import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/drawer/main_drawer.dart';
import '../../../../themes/widgets/navigation/bottom_navigation.dart';
import '../controllers/pesanan_controller.dart';

class PesananView extends GetView<PesananController> {
  const PesananView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Pesanan',
            style: FontsThemes.titlePage.copyWith(color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Get.toNamed("/notif");
              },
              icon: Icon(Icons.notifications),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
//       body: Center(
//         child: Text(
//           'PesananView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
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
