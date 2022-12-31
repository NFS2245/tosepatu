import 'package:get/get.dart';

import '../controllers/delivery_controller.dart';

class DeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliveryController>(
      () => DeliveryController(),
    );
  }
}
