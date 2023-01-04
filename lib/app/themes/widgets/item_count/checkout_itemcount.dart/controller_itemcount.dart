import 'package:get/get.dart';

class CountController extends GetxController {
//   var deepClean = 0.obs;
//   var deepcleanwhite = 0.obs;
//   incrementDeepclean() {
//     deepClean.value++;
//   }

//   decrementDeepclean() {
//     if (deepClean.value > 0) {
//       deepClean.value--;
//     }
//   }

//   incrementDeepcleanWhite() {
//     deepcleanwhite.value++;
//   }

//   decrementDeepcleanWhite() {
//     if (deepcleanwhite.value > 0) {
//       deepClean.value--;
//     }
//   }
// }

  var deepClean = 0.obs;
  var deepcleanwhite = 0.obs;
  int get valueddeepclean => deepClean.value;
  int get valuedwhite => deepcleanwhite.value;
  int get sumdeepclean => deepClean.value * 10000;
  int get sumwhite => deepcleanwhite.value * 15000;
  int get sumtotal => sumwhite + sumdeepclean;

  incrementDeepclean() {
    deepClean.value++;
  }

  decrementDeepclean() {
    if (deepClean.value > 0) {
      deepClean.value--;
    }
  }

  incrementDeepcleanWhite() {
    deepcleanwhite.value++;
  }

  decrementDeepcleanWhite() {
    if (deepcleanwhite.value > 0) {
      deepcleanwhite.value--;
    }
  }
}
