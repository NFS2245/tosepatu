import 'package:get/get.dart';
import 'package:tosepatu/app/routes/app_pages.dart';

class MainPageController extends GetxController {
  //TODO: Implement MainPageController
  RxInt pageIndex = 0.obs;

  void onTappedItem(int index) {
    pageIndex.value = index;

    switch (index) {
      case 1:
        Get.offAllNamed(Routes.PESANAN);
        break;
      case 2:
        Get.offAllNamed(Routes.RIWAYAT);
        break;
      case 3:
        Get.offAllNamed(Routes.AKUN);
        break;
      default:
        Get.offAllNamed(Routes.HOME);
    }
  }
}
