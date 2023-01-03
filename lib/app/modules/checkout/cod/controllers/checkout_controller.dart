import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CheckoutController extends GetxController {
  //TODO: Implement CheckoutController

  late RxString dropDownInitialSelected;
  List<String> listItem = ['Drop Of', 'Pick Up', 'Delivery'];

  void onChangeDropDown(String? newValue) {
    dropDownInitialSelected.value = newValue ?? "";
    print(dropDownInitialSelected);
    // Get.back()
  }

  @override
  void onInit() {
    dropDownInitialSelected = listItem[0].obs;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
