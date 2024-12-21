import 'package:get/get.dart';

import '../modules/MainMenu/bindings/main_menu_binding.dart';
import '../modules/MainMenu/views/main_menu_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/tagihan/bindings/tagihan_binding.dart';
import '../modules/tagihan/views/tagihan_view.dart';
import '../modules/tagihan_detail/bindings/tagihan_detail_binding.dart';
import '../modules/tagihan_detail/views/tagihan_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_MENU,
      page: () => const MainMenuView(),
      binding: MainMenuBinding(),
    ),
    GetPage(
      name: _Paths.TAGIHAN,
      page: () => const TagihanView(),
      binding: TagihanBinding(),
    ),
    GetPage(
      name: _Paths.TAGIHAN_DETAIL,
      page: () => const TagihanDetailView(),
      binding: TagihanDetailBinding(),
    ),
  ];
}
