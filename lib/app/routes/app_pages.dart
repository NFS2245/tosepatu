import 'package:get/get.dart';

import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/register/bindings/register_binding.dart';
import '../modules/auth/register/views/register_view.dart';
import '../modules/checkout/cod/bindings/checkout_binding.dart';
import '../modules/checkout/cod/views/checkout_view.dart';
import '../modules/checkout/dropoff/bindings/delivery_binding.dart';
import '../modules/checkout/dropoff/views/delivery_view.dart';
import '../modules/checkout/pickup/bindings/pickup_binding.dart';
import '../modules/checkout/pickup/views/pickup_view.dart';
import '../modules/checkoutselect/bindings/checkoutselect_binding.dart';
import '../modules/checkoutselect/views/checkoutselect_view.dart';
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
import '../modules/splashscreen/views/splash_screen_view.dart';
import '../modules/tentangAplikasi/bindings/tentang_aplikasi_binding.dart';
import '../modules/tentangAplikasi/views/tentang_aplikasi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PESANAN,
      page: () => PesananView(),
      binding: PesananBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.AKUN,
      page: () => AkunView(),
      binding: AkunBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.NOTIF,
      page: () => const NotifView(),
      binding: NotifBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUTSELECT,
      page: () => const CheckoutselectView(),
      binding: CheckoutselectBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERY,
      page: () => DeliveryView(),
      binding: DeliveryBinding(),
    ),
    GetPage(
      name: _Paths.PICKUP,
      page: () => PickupView(),
      binding: PickupBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
    ),
    GetPage(
      name: _Paths.TENTANG_APLIKASI,
      page: () => const TentangAplikasiView(),
      binding: TentangAplikasiBinding(),
    ),
  ];
}
