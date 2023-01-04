import 'package:get/get.dart';

import '../controllers/ubahemail_controllers.dart';

class UbahEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UbahEmailController>(
      () => UbahEmailController(),
    );
  }
}
