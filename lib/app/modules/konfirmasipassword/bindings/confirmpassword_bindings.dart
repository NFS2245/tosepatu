import 'package:get/get.dart';

import '../controllers/confirmpassword_controllers.dart';

class ConfirmPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmPasswordController>(
      () => ConfirmPasswordController(),
    );
  }
}
