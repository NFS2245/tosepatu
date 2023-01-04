import 'package:tosepatu/app/modules/checkout/dropoff/views/delivery_view.dart';
import 'package:tosepatu/app/modules/main_page/riwayat/views/riwayat_view.dart';

class API {
  static const koneksi = "https://tosepatu.wstif3d.id/API";
  static const signIn = "$koneksi/login.php";
  static const signUp = "$koneksi/register.php";
  static const pickUp = "$koneksi/pesananpickup.php";
  static const DropOff = "$koneksi/pesanandropoff.php";
  static const Cod = "$koneksi/pesananCod.php";
  static const riwayatPending = "$koneksi/riwayatpending.php";
  static const riwayatProses = "$koneksi/riwayatproses.php";
  static const riwayatFinish = "$koneksi/riwayatselesai.php";
  static const riwayatDibatalkan = "$koneksi/riwayatCancel.php";
  static const riwayat = "$koneksi/riwayat.php";
}
