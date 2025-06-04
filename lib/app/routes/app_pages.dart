import 'package:get/get.dart';

import '../modules/artikel/bindings/artikel_binding.dart';
import '../modules/artikel/views/artikel_view.dart';
import '../modules/detailBaby/bindings/detail_baby_binding.dart';
import '../modules/detailBaby/views/detail_baby_view.dart';
import '../modules/detailProfileOrangTua/bindings/detail_profile_orang_tua_binding.dart';
import '../modules/detailProfileOrangTua/views/detail_profile_orang_tua_view.dart';
import '../modules/forum/bindings/forum_binding.dart';
import '../modules/forum/views/forum_view.dart';
import '../modules/home_orangTua/bindings/home_binding.dart';
import '../modules/home_orangTua/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/Imunisasi_orangTua/bindings/posyandu_binding.dart';
import '../modules/Imunisasi_orangTua/views/posyandu_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/transition/bindings/transition_binding.dart';
import '../modules/transition/views/transition_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DETAIL_PROFILE_ORANG_TUA;

  static final routes = [
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => const NavigationView(),
      binding: NavigationBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: _Paths.ARTIKEL,
          page: () => const ArtikelView(),
          binding: ArtikelBinding(),
          transition: Transition.noTransition,
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
      ],
    ),
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
    GetPage(
      name: _Paths.TRANSITION,
      page: () => const TransitionView(),
      binding: TransitionBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 800),
    ),
    GetPage(
      name: _Paths.DETAIL_PROFILE_ORANG_TUA,
      page: () => const DetailProfileOrangTuaView(),
      binding: DetailProfileOrangTuaBinding(),
    ),
  ];
}
