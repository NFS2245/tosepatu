import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tosepatu/app/routes/app_pages.dart';
import 'package:tosepatu/app/themes/themes/colors_theme.dart';
import 'package:tosepatu/app/themes/themes/font_themes.dart';
import 'package:tosepatu/app/themes/widgets/dropdown/dropdown.dart';
import 'package:tosepatu/app/themes/widgets/item_count/checkout_itemcount.dart/check_itemcount.dart';
import 'package:tosepatu/app/themes/widgets/item_count/checkout_itemcount.dart/item_count.dart';
import 'package:tosepatu/app/themes/widgets/text_field/checkout/address/address_textfields.dart';
import 'package:tosepatu/app/themes/widgets/text_field/checkout/note/note_textfields.dart';

import '../../../themes/widgets/item_count/checkout_itemcount.dart/controller_itemcount.dart';
import '../../../themes/widgets/text_field/checkout/name/name_textfields.dart';
import '../../../themes/widgets/text_field/checkout/phone_number/phone_number_textfields.dart';
import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final CountController c = Get.put(CountController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesan',
            style: FontsThemes.titlePage.copyWith(color: Colors.black)),
        leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                Get.offNamed(Routes.HOME);
              },
              color: Colors.black,
              icon: Icon(Icons.arrow_back),
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 0),
              Container(
                height: 72,
                width: 375,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      PrimaryBlue,
                      CyanBlue,
                    ],
                  ),
                  // borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => GenericDropdown(
                          selectedItem:
                              controller.dropDownInitialSelected.value,
                          // items: [
                          //   controller.dropDownInitialSelected.value,
                          //   ...controller.listItem
                          // ],
                          items: controller.listItem,
                          onChanged: (val) {
                            controller.onChangeDropDown(val);
                          }),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 15),
              Column(
                children: [NamaTextFields()],
              ),
              const SizedBox(height: 14),
              Column(
                children: [NoTeleponTextFields()],
              ),
              const SizedBox(height: 14),
              Column(
                children: [AlamatTextFields()],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 16,
                          ),
                          child: Text("Deep Clean",
                              style: FontsThemes.checkoutText)),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 143, right: 14),
                          child: CheckItemCount()),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 15, left: 16),
                      child: Text("Deep Clean + Sepatu Putih",
                          style: FontsThemes.checkoutText)),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 26, right: 14),
                      child: CheckItemCount2()),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [CatatanTextFields()],
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 3,
                      width: 343,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        color: GreyLine,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 5, left: 16, right: 122),
                          child: Text("Deep Clean",
                              style: FontsThemes.checkoutText2)),
                      Obx(() => Padding(
                            padding: const EdgeInsets.only(top: 5, right: 15),
                            child: Text("x${c.valueddeepclean.toString()}",
                                style: FontsThemes.checkoutText2),
                          )),
                      Obx(() => Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Text("Rp.${c.sumdeepclean.toString()}",
                                style: FontsThemes.checkoutText2),
                          )),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 16, right: 20),
                      child: Text("Deep Clean + Sepatu Putih",
                          style: FontsThemes.checkoutText2)),
                  Obx(() => Padding(
                        padding: const EdgeInsets.only(top: 10, right: 15),
                        child: Text("x${c.valuedwhite.toString()}",
                            style: FontsThemes.checkoutText2),
                      )),
                  Obx(() => Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Text("Rp.${c.sumwhite.toString()}",
                            style: FontsThemes.checkoutText2),
                      )),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 120),
                    child: Text(
                      "TOTAL",
                      style: FontsThemes.totalText,
                    ),
                  ),
                  Obx(() => Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Rp. ${c.sumtotal.toString()}",
                            style: FontsThemes.totalText),
                      )),
                ],
              ),
              SizedBox(height: 25),
              Container(
                width: 330,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
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
