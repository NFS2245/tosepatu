import 'package:get/get.dart';

import '../controllers/cekemail_controllers.dart';

class CekEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CekEmailController>(
      () => CekEmailController(),
    );
  }
}
