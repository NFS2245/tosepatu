import 'package:android_intent_plus/android_intent.dart';
import 'package:get/get.dart';

class AkunController extends GetxController {
  //TODO: Implement AkunController
  void intentWhatsappAsk() {
    final message = """
""";

    final intent = AndroidIntent(
        action: "android.intent.action.VIEW",
        data: Uri.encodeFull(
            "whatsapp://send?phone=+6289653172111&text=$message"),
        package: "com.whatsapp");

    intent.launch();
  }

  final count = 0.obs;
  @override
  void onInit() {
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

  void increment() => count.value++;
}
