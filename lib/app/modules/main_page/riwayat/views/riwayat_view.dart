import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';

import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/drawer/main_drawer.dart';
import '../../../../themes/widgets/navigation/bottom_navigation.dart';
import '../../../api/api.dart';
import '../../../models/indexRiwayat.dart';
import '../controllers/riwayat_controller.dart';
import 'package:http/http.dart' as http;

class RiwayatView extends GetView<RiwayatController> {
  Widget build(BuildContext context) {
    return riwayat();
  }
}

class riwayat extends StatefulWidget {
  const riwayat({super.key});
  @override
  State<riwayat> createState() => _riwayatState();
}

class _riwayatState extends State<riwayat> {
  // List<DataRiwayat>? lisPending;
  List lisPending = [];
  String? id_user = '';
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      id_user = preferences.getString("id_user");
    });
  }

  Future<void> getDataRiwayat() async {
    Uri url = Uri.parse(API.riwayat);
    final response = await http.post(url, body: {"id_user": '$id_user'});
    if (this.mounted) {
      setState(() {
        lisPending = json
            .decode(response.body)
            .map((item) => DataRiwayat.fromJson(item))
            .toList()
            .cast<DataRiwayat>();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getDataRiwayat();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    getDataRiwayat();

    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: FillGrey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Riwayat',
            style: FontsThemes.titlePage.copyWith(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: lisPending.length,
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
                              "${lisPending[index].alamat}",
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 95),
                            //   child: Text("list"),
                            // ),
                            // Text("Rp 10000"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${lisPending[index].catatan}",
                            ),
                            // Text("x1"),
                            // Text("Rp 15000"),
                          ],
                        ),
                        Divider(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${lisPending[index].namaPengiriman}",
                            ),
                            Text(
                              "Rp ${lisPending[index].grandTotal}",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${lisPending[index].tanggalMasuk}",
                            ),
                            Text(
                              "${lisPending[index].idPesanan}",
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
