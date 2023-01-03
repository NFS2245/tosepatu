import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../routes/app_pages.dart';
import '../../../../themes/themes/colors_theme.dart';
import '../../../../themes/themes/font_themes.dart';
import '../../../../themes/widgets/item_count/checkout_itemcount.dart/check_itemcount.dart';
import '../../../../themes/widgets/item_count/checkout_itemcount.dart/controller_itemcount.dart';
import 'package:http/http.dart' as http;

import '../../../../themes/widgets/text_field/checkout/address/address_textfields.dart';
import '../../../../themes/widgets/text_field/checkout/name/name_textfields.dart';
import '../../../../themes/widgets/text_field/checkout/note/note_textfields.dart';
import '../../../../themes/widgets/text_field/checkout/phone_number/phone_number_textfields.dart';
import '../../../api/api.dart';
import '../controllers/delivery_controller.dart';

class DeliveryView extends GetView<DeliveryController> {
  @override
  Widget build(BuildContext context) {
    return DropOff();
  }
}

class DropOff extends StatefulWidget {
  const DropOff({
    Key? key,
  }) : super(key: key);
  @override
  State<DropOff> createState() => _DropOffState();
}

class _DropOffState extends State<DropOff> {
  TextEditingController namaC = TextEditingController();
  TextEditingController noTelpC = TextEditingController();
  TextEditingController alamatC = TextEditingController();
  TextEditingController catatanC = TextEditingController();

  final CountController c = Get.put(CountController());

  String? id_user = '';
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      id_user = preferences.getString("id_user");
    });
  }

  Future<void> DropOff() async {
    Uri url1 = Uri.parse(API.DropOff);
    var responseDropoff = await http.post(url1, body: {
      'uid_user': "$id_user",
      'catatan': catatanC.text,
      'grand_total': c.sumtotal.toString(),
      'no_telp': noTelpC.text,
      'nama': namaC.text,
      'qty': c.deepClean.toString(),
      'harga_layanan': 10000.toString(),
      'sub_total': c.sumdeepclean.toString(),
      'nama2': namaC.text,
      'qty2': c.valuedwhite.toString(),
      'harga_layanan2': 15000.toString(),
      'sub_total2': c.sumwhite.toString(),
    });
    print(responseDropoff.body);
    var dataDropoff = jsonDecode(responseDropoff.body);
    if (dataDropoff == "Success") {
      Fluttertoast.showToast(
          msg: "berhasil",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.green,
          textColor: Colors.white);
      Get.toNamed('/home');
    } else {
      Fluttertoast.showToast(
          msg: "gagal! cek kembali",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white);
    }
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final CountController c = Get.put(CountController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Off',
            style: FontsThemes.titlePage.copyWith(color: Colors.black)),
        leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                Get.offNamed(Routes.CHECKOUTSELECT);
              },
              color: Colors.black,
              icon: Icon(Icons.keyboard_arrow_left),
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Column(
            children: [
              // SizedBox(height: 0),
              // Container(
              //   height: 72,
              //   width: 375,
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment(0.003, -0.896),
              //       end: Alignment(0.941, 0.648),
              //       colors: <Color>[GradientBlue, GradientCyan, GradientCyan],
              //       stops: <double>[0, 1, 1],
              //     ),
              //   ),

              //   // borderRadius: BorderRadius.circular(0),

              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Obx(
              //         () => GenericDropdown(
              //             selectedItem:
              //                 controller.dropDownInitialSelected.value,
              //             // items: [
              //             //   controller.dropDownInitialSelected.value,
              //             //   ...controller.listItem
              //             // ],
              //             items: controller.listItem,
              //             onChanged: (val) {
              //               controller.onChangeDropDown(val);
              //             }),
              //       )
              //     ],
              //   ),
              // ),
              const SizedBox(height: 15),
              Column(
                children: [
                  NamaTextFields(
                    controller: namaC,
                  ),
                  const SizedBox(height: 14),
                  NoTeleponTextFields(
                    controller: noTelpC,
                  ),
                  const SizedBox(height: 14),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 16,
                          ),
                          child: Text("Deep Clean",
                              style: FontsThemes.checkoutText)),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
                          child: CheckItemCount()),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 15, left: 16),
                      child: Text("Deep Clean + Sepatu Putih",
                          style: FontsThemes.checkoutText)),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: CheckItemCount2()),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  CatatanTextFields(
                    controller: catatanC,
                  )
                ],
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Container(
                        height: 3,
                        width: Get.width,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          color: GreyLine,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text("Deep Clean",
                              style: FontsThemes.checkoutText2)),
                      // Obx(() => Padding(
                      //       padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                      //       child: Text("x${c.valueddeepclean.toString()}",
                      //           style: FontsThemes.checkoutText2),
                      //     )),
                      Obx(() => Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: Text("Rp.${c.sumdeepclean.toString()}",
                                style: FontsThemes.checkoutText2),
                          )),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Text("Deep Clean + Sepatu Putih",
                          style: FontsThemes.checkoutText2)),
                  // Obx(() => Padding(
                  //       padding: const EdgeInsets.fromLTRB(0, 10, 65, 0),
                  //       child: Text("x${c.valuedwhite.toString()}",
                  //           style: FontsThemes.checkoutText2),
                  //     )),
                  Obx(() => Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                        child: Text("Rp.${c.sumwhite.toString()}",
                            style: FontsThemes.checkoutText2),
                      )),
                ],
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "TOTAL",
                      style: FontsThemes.totalText,
                    ),
                  ),
                  Obx(() => Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Text("Rp. ${c.sumtotal.toString()}",
                            style: FontsThemes.totalText),
                      )),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.16),
              Container(
                width: 330,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    DropOff();
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
              // Padding(
              //     padding: EdgeInsets.only(
              //         bottom: MediaQuery.of(context).viewInsets.top))
            ],
          ),
        ),
      ),
    );
  }
}
