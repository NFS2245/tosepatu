import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';

import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/drawer/main_drawer.dart';
import '../../../../themes/widgets/navigation/bottom_navigation.dart';
import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  const RiwayatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: FillGrey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Riwayat',
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
      body: SafeArea(
        child: ListView.builder(
          itemCount: 30,
          padding: EdgeInsets.only(
            top: 16,
            bottom: 100,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: AspectRatio(
                aspectRatio: 328 / 128,
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 10.0,
                    ),
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Deep Clean",
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 95),
                              child: Text("x1"),
                            ),
                            Text("Rp 10000"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Deep Clean + Sepatu Putih",
                            ),
                            Text("x1"),
                            Text("Rp 15000"),
                          ],
                        ),
                        Divider(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nama",
                            ),
                            Text(
                              "Rp 25000",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Selasa, 32 September 2069",
                            ),
                            Text(
                              "Kode Pesanan",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      //   ]);
      // }),
      // body: SafeArea(
      //     child: Column(
      //   children: [
      //     Container(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(left: 15),
      //             child: Text("Date",
      //                 style: FontsThemes.dateSortText
      //                     .copyWith(color: Colors.black)),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(right: 13),
      //             child: IconButton(
      //               onPressed: () {},
      //               color: Colors.black,
      //               icon: Icon(Icons.sort),
      //             ),
      //           ),
      //         ],
      //       ),
      //       height: 54,
      //       width: 375,
      //       decoration: BoxDecoration(
      //         color: FillGrey,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         child: Column(
      //           children: [
      //             Padding(
      //               padding:
      //                   const EdgeInsets.only(right: 290, left: 9, top: 17),
      //               child: Text(
      //                 'Date',
      //                 style: FontsThemes.dateTextDetail
      //                     .copyWith(color: GreySortDetail),
      //               ),
      //             ),
      //             SizedBox(height: 25),
      //             Padding(
      //                 padding: const EdgeInsets.only(right: 227, left: 9),
      //                 child: Text('Deep Clean')),
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // )),
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
