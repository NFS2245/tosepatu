import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tosepatu/app/themes/widgets/drawer_container_akun/container_akun.dart';

import '../../../../routes/app_pages.dart';
import '../../../../themes/themes/colors_theme.dart';
import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/drawer/main_drawer.dart';
import '../../../../themes/widgets/navigation/bottom_navigation.dart';
import '../controllers/akun_controller.dart';

class AkunView extends GetView<AkunController> {
  const AkunView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: FillGrey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Bantuan',
            style: FontsThemes.titlePage.copyWith(color: Colors.black)),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 10),
        //     child: IconButton(
        //       onPressed: () {
        //         Get.toNamed("/notif");
        //       },
        //       icon: Icon(Icons.notificatio ns),
        //     ),
        //   ),
        // ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            akun(),
            // Positioned(
            //   // profileoE5 (135:320)
            //   left: 0,
            //   top: 43,
            //   child: Container(
            //     padding: EdgeInsets.fromLTRB(12, 23, 12, 56),
            //     width: Get.width,
            //     height: 138,
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment(0.003, -0.896),
            //         end: Alignment(0.941, 0.648),
            //         colors: <Color>[GradientBlue, GradientCyan, GradientCyan],
            //         stops: <double>[0, 1, 1],
            //       ),
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //           padding: const EdgeInsets.symmetric(
            //             horizontal: 16.0,
            //             vertical: 0,
            //           ),
            //           // johndoeCX7 (135:315)
            //           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            //           width: double.infinity,
            //           child: Text(
            //             'John Doe',
            //             style: FontsThemes.akunTextName
            //                 .copyWith(color: Colors.white),
            //             textAlign: TextAlign.start,
            //           ),
            //         ),
            //         Container(
            //           // emailemailcomikM (135:317)
            //           margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
            //           width: double.infinity,
            //           child: Text(
            //             "$username",
            //             style: FontsThemes.akunTextEmail
            //                 .copyWith(color: Colors.white),
            //             textAlign: TextAlign.start,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                //   child: Text(
                //     "Akun",
                //     textAlign: TextAlign.start,
                //     style: FontsThemes.akunText.copyWith(color: Colors.black),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offNamed(Routes.NOTIF);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: Text(
                          "FaQ",
                          textAlign: TextAlign.start,
                          style: FontsThemes.akunChange
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offNamed(Routes.NOTIF);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: Icon(Icons.keyboard_arrow_left),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offNamed(Routes.TENTANG_APLIKASI);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: Text(
                          "Tentang Aplikasi",
                          textAlign: TextAlign.start,
                          style: FontsThemes.akunChange
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offNamed(Routes.NOTIF);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: Icon(Icons.keyboard_arrow_left),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      controller.intentWhatsappAsk();
                    },
                    icon: Icon(Icons.phone),
                    label: Text("Chat Admin Untuk Bertanya"),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFF25D366),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
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
