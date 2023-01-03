import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tosepatu/app/modules/models/tabs/tabsCancel.dart';
import 'package:tosepatu/app/modules/models/tabs/tabsFinish.dart';
import 'package:tosepatu/app/modules/models/tabs/tabsProses.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';

import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/drawer/main_drawer.dart';
import '../../../../themes/widgets/navigation/bottom_navigation.dart';
import '../../../models/tabs/tabsPending.dart';
import '../controllers/pesanan_controller.dart';

class PesananView extends GetView<PesananController> {
  Widget build(BuildContext context) {
    return pesanan();
  }
}

class pesanan extends StatefulWidget {
  const pesanan({super.key});

  @override
  State<pesanan> createState() => _pesananState();
}

class _pesananState extends State<pesanan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('Pesanan',
              style: FontsThemes.titlePage.copyWith(color: Colors.black)),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 10),
          //     child: IconButton(
          //       onPressed: () {
          //         Get.toNamed("/notif");
          //       },
          //       icon: Icon(Icons.notifications),
          //     ),
          //   ),
          // ],
          centerTitle: true,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),

        body: Column(
          children: [
            TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                  color: PrimaryBlue),
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Tab(
                    icon: Icon(
                      Icons.pending_actions_rounded,
                    ),
                    child: Text(
                      "Pending",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Tab(
                    icon: Icon(
                      Icons.work,
                    ),
                    child: Text(
                      "Proses",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Tab(
                    icon: Icon(
                      Icons.done_all_rounded,
                    ),
                    child: Text(
                      "Selesai",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Tab(
                    icon: Icon(
                      Icons.cancel_outlined,
                    ),
                    child: Text(
                      "Dibatalkan",
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  TabsPending(),
                  TabsProses(),
                  TabFinish(),
                  TabsCancel(),
                ],
              ),
            ),
          ],
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
      ),
    );
  }
}
