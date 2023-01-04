import 'package:get/get.dart';
import 'package:tosepatu/app/modules/cekemail/bindings/cekemail_bindings.dart';
import 'package:tosepatu/app/modules/cekemail/views/cekemail_views.dart';
import 'package:tosepatu/app/modules/konfirmasipassword/bindings/confirmpassword_bindings.dart';
import 'package:tosepatu/app/modules/konfirmasipassword/views/confirmpassword_views.dart';
import 'package:tosepatu/app/modules/newpassword/bindings/newpassword_bindings.dart';
import 'package:tosepatu/app/modules/newpassword/views/newpassword_views.dart';
import 'package:tosepatu/app/modules/ubahemail/bindings/ubahemail_bindings.dart';
import 'package:tosepatu/app/modules/ubahemail/views/ubahemail_view.dart';
import 'package:tosepatu/app/modules/ubahpassword/bindings/ubahpassword_bindings.dart';
import 'package:tosepatu/app/modules/ubahpassword/views/ubahpassword_view.dart';

import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/register/bindings/register_binding.dart';
import '../modules/auth/register/views/register_view.dart';
import '../modules/checkout/bindings/checkout_binding.dart';
import '../modules/checkout/views/checkout_view.dart';
import '../modules/main_page/akun/bindings/akun_binding.dart';
import '../modules/main_page/akun/views/akun_view.dart';
import '../modules/main_page/home/bindings/home_binding.dart';
import '../modules/main_page/home/views/home_view.dart';
import '../modules/main_page/pesanan/bindings/pesanan_binding.dart';
import '../modules/main_page/pesanan/views/pesanan_view.dart';
import '../modules/main_page/riwayat/bindings/riwayat_binding.dart';
import '../modules/main_page/riwayat/views/riwayat_view.dart';
import '../modules/notif/bindings/notif_binding.dart';
import '../modules/notif/views/notif_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PESANAN,
      page: () => const PesananView(),
      binding: PesananBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => const RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.AKUN,
      page: () => const AkunView(),
      binding: AkunBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => const CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.NOTIF,
      page: () => const NotifView(),
      binding: NotifBinding(),
    ),
    GetPage(
      name: _Paths.UBAHEMAIL,
      page: () => const UbahEmailView(),
      binding: UbahEmailBinding(),
    ),
    GetPage(
      name: _Paths.UBAHPASSWORD,
      page: () => const UbahPasswordView(),
      binding: UbahPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CEKEMAIL,
      page: () => const CekEmailView(),
      binding: CekEmailBinding(),
    ),
    GetPage(
      name: _Paths.NEWPASSWORD,
      page: () => const NewPasswordViews(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM,
      page: () => const ConfirmPasswordView(),
      binding: ConfirmPasswordBinding(),
    )
  ];
}
