import 'package:get/get.dart';

import '../controllers/notif_controller.dart';

class NotifBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotifController>(
      () => NotifController(),
    );
  }
}
