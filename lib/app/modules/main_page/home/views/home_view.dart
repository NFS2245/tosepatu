import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tosepatu/app/themes/widgets/drawer/main_drawer.dart';
import 'package:tosepatu/app/themes/widgets/navigation/bottom_navigation.dart';
import 'package:tosepatu/app/modules/main_page/controllers/main_page_controllers.dart';
import '../../../../routes/app_pages.dart';
import '../../../../themes/themes/colors_theme.dart';
import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/item_count/checkout_itemcount.dart/item_count.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  final VoidCallback? signOut;
  HomeView({Key? key, this.signOut}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController homeController = Get.put(HomeController());

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MainDrawer(
        signOut: () {
          widget.signOut!();
        },
      ),
      backgroundColor: FillGrey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Beranda',
            style: FontsThemes.titlePage.copyWith(color: Colors.black)
            // GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
            ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        //     child: IconButton(
        //       onPressed: () {
        //         Get.toNamed("/notif");
        //       },
        //       icon: Icon(Icons.notifications),
        //     ),
        //   ),
        // ],
        centerTitle: true,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 10),
        //   child: IconButton(
        //     onPressed: () {

        //     },
        //     color: Colors.black,
        //     icon: Icon(Icons.dehaze),
        //   ),
        // ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/cover/Cover.png'),
                        fit: BoxFit.fill),
                    // borderRadius: BorderRadius.circular(0),
                  ),
                  // color: Colors.white,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.0)),
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                        vertical: 10,
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(19, 10, 0, 10),
                                      width: double.infinity,
                                      child: Text(
                                        "Deep Clean",
                                        style: FontsThemes.detailText1,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(19, 0, 19, 10),
                                      width: double.infinity,
                                      child: Text(
                                        "Layanan Pencucian Sepatu Secara Menyeluruh.",
                                        style: FontsThemes.detailText2,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 262,
                        width: 155,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo/logo.png'),
                                alignment: Alignment.topCenter),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                  offset: Offset(0, 5))
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 73, top: 160),
                              child: Text(
                                "Deep Clean",
                                style: FontsThemes.itemName,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 70, top: 21),
                              child: Text(
                                "Rp. 10.000",
                                style: FontsThemes.itemPrice,
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [ItemCount()],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.0)),
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                        vertical: 10,
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(19, 10, 0, 10),
                                      width: double.infinity,
                                      child: Text(
                                        "Deep Clean + Sepatu Putih",
                                        style: FontsThemes.detailText3,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(19, 0, 19, 10),
                                      width: double.infinity,
                                      child: Text(
                                        "Layanan Pencucian Sepatu Secara Menyeluruh, Khusus Sepatu Putih. ",
                                        style: FontsThemes.detailText2,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 262,
                        width: 155,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo/logo.png'),
                                alignment: Alignment.topCenter),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                  offset: Offset(0, 5))
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 159),
                              child: Text("Deep Clean + Sepatu Putih",
                                  style: FontsThemes.itemName
                                  // GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 78, top: 7),
                              child: Text(
                                "Rp. 15.000",
                                style: FontsThemes.itemPrice,
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [ItemCount2()],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.14),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/checkoutselect");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: PrimaryBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0)),
                        ),
                        child: Text(
                          "Pesan",
                          style: FontsThemes.buttonTextStyle
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
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
