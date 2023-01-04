import 'package:get/get.dart';

import '../controllers/ubahpassword_controller.dart';

class UbahPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UbahPasswordController>(
      () => UbahPasswordController(),
    );
  }
}
