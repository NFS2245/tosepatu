import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/main_page/controllers/main_page_controllers.dart';
import 'app/routes/app_pages.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  MainPageController mainPageController =
      Get.put(MainPageController(), permanent: true);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
