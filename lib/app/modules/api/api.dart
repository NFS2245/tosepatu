import 'package:tosepatu/app/modules/checkout/dropoff/views/delivery_view.dart';

class API {
  static const koneksi =
      "https://e72c-2001-448a-5122-114a-88f8-2531-e62b-fbe1.ap.ngrok.io/testingAPI/";
  static const signIn = "$koneksi/login.php";
  static const signUp = "$koneksi/register.php";
  static const pickUp = "$koneksi/pesananpickup.php";
  static const DropOff = "$koneksi/pesanandropoff.php";
  static const Cod = "$koneksi/pesananCod.php";
}
