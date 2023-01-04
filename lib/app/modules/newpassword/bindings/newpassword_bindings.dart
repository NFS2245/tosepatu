import 'package:get/get.dart';

import '../controllers/newpassword_controllers.dart';

class NewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPasswordController>(
      () => NewPasswordController(),
    );
  }
}
