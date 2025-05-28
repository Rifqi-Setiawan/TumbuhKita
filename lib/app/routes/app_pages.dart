import 'package:get/get.dart';

import '../modules/artikel/bindings/artikel_binding.dart';
import '../modules/artikel/views/artikel_view.dart';
import '../modules/detailBaby/bindings/detail_baby_binding.dart';
import '../modules/detailBaby/views/detail_baby_view.dart';
import '../modules/forum/bindings/forum_binding.dart';
import '../modules/forum/views/forum_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/posyandu/bindings/posyandu_binding.dart';
import '../modules/posyandu/views/posyandu_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
        name: _Paths.NAVIGATION,
        page: () => const NavigationView(),
        binding: NavigationBinding(),
        // Children digunakan untuk nested navigation
        children: [
          GetPage(
            name: _Paths.HOME,
            page: () => const HomeView(),
            binding: HomeBinding(),
            transition: Transition.noTransition
          ),
          GetPage(
            name: _Paths.ARTIKEL,
            page: () => const ArtikelView(),
            binding: ArtikelBinding(),
            transition: Transition.noTransition
          ),
          GetPage(
            name: _Paths.POSYANDU,
            page: () => const PosyanduView(),
            binding: PosyanduBinding(),
            transition: Transition.noTransition,
          ),
          GetPage(
            name: _Paths.FORUM,
            page: () => const ForumView(),
            binding: ForumBinding(),
            transition: Transition.noTransition,
          ),
        ]),
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
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ARTIKEL,
      page: () => const ArtikelView(),
      binding: ArtikelBinding(),
    ),
    GetPage(
      name: _Paths.POSYANDU,
      page: () => const PosyanduView(),
      binding: PosyanduBinding(),
    ),
    GetPage(
      name: _Paths.FORUM,
      page: () => const ForumView(),
      binding: ForumBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => const NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BABY,
      page: () => const DetailBabyView(),
      binding: DetailBabyBinding(),
    ),
  ];
}
