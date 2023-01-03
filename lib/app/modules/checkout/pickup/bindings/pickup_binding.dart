import 'package:get/get.dart';

import '../controllers/pickup_controller.dart';

class PickupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PickupController>(
      () => PickupController(),
    );
  }
}
