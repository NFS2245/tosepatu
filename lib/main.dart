import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/main_page/controllers/main_page_controllers.dart';
import 'app/routes/app_pages.dart';

void main() async {
  MainPageController mainPageController =
      Get.put(MainPageController(), permanent: true);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
