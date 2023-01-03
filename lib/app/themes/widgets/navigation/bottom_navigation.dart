import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';

import '../../../modules/main_page/controllers/main_page_controllers.dart';

class MainBottomNavigation extends StatelessWidget {
  MainBottomNavigation({super.key});

  MainPageController controller = Get.find<MainPageController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: controller.pageIndex.value,
          onTap: (value) {
            controller.onTappedItem(value);
          },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: PrimaryBlue,
          unselectedItemColor: Colors.grey,
          enableFeedback: false,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: "Pesanan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "Riwayat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.headset_mic_rounded),
              label: "Bantuan",
            ),
          ],
        ));
  }
}
