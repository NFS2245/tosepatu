import 'package:get/get.dart';

import '../controllers/checkoutselect_controller.dart';

class CheckoutselectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutselectController>(
      () => CheckoutselectController(),
    );
  }
}
