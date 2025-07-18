import 'package:get/get.dart';

import '../modules/Imunisasi_orangTua/bindings/imunisasi_orangTua_binding.dart';
import '../modules/Imunisasi_orangTua/views/imunisasi_orangTua_view.dart';
import '../modules/add_data_anak/bindings/add_data_anak_binding.dart';
import '../modules/add_data_anak/views/add_data_anak_view.dart';
import '../modules/add_kegiatan_posyandu/bindings/add_kegiatan_posyandu_binding.dart';
import '../modules/add_kegiatan_posyandu/views/add_kegiatan_posyandu_view.dart';
import '../modules/add_pertanyaan_forum_orangTua/bindings/add_pertanyaan_forum_orang_tua_binding.dart';
import '../modules/add_pertanyaan_forum_orangTua/views/add_pertanyaan_forum_orang_tua_view.dart';
import '../modules/artikel/bindings/artikel_binding.dart';
import '../modules/artikel/views/artikel_view.dart';
import '../modules/detail_artikel/bindings/detail_artikel_binding.dart';
import '../modules/detail_artikel/views/detail_artikel_view.dart';
import '../modules/detail_baby/bindings/detail_baby_binding.dart';
import '../modules/detail_baby/views/detail_baby_view.dart';
import '../modules/detail_profile/bindings/detail_profile_binding.dart';
import '../modules/detail_profile/views/detail_profile_view.dart';
import '../modules/detail_profile_orang_tua/bindings/detail_profile_orang_tua_binding.dart';
import '../modules/detail_profile_orang_tua/views/detail_profile_orang_tua_view.dart';
import '../modules/forum/bindings/forum_binding.dart';
import '../modules/forum/views/forum_view.dart';
import '../modules/forum_tenagaKesehatan/bindings/forum_tenaga_kesehatan_binding.dart';
import '../modules/forum_tenagaKesehatan/views/forum_tenaga_kesehatan_view.dart';
import '../modules/home_orangTua/bindings/home_binding.dart';
import '../modules/home_orangTua/views/home_view.dart';
import '../modules/home_posyandu/bindings/home_posyandu_binding.dart';
import '../modules/home_posyandu/views/home_posyandu_view.dart';
import '../modules/home_tenagaKesehatan/bindings/home_tenaga_kesehatan_binding.dart';
import '../modules/home_tenagaKesehatan/views/home_tenaga_kesehatan_view.dart';
import '../modules/jawab_pertanyaan_tenagaKesehatan/bindings/jawab_pertanyaan_tenaga_kesehatan_binding.dart';
import '../modules/jawab_pertanyaan_tenagaKesehatan/views/jawab_pertanyaan_tenaga_kesehatan_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/statistik_posyandu/bindings/statistik_posyandu_binding.dart';
import '../modules/statistik_posyandu/views/statistik_posyandu_view.dart';
import '../modules/statistik_tenagaKesehatan/bindings/statistik_tenaga_kesehatan_binding.dart';
import '../modules/statistik_tenagaKesehatan/views/statistik_tenaga_kesehatan_view.dart';
import '../modules/transition_1/bindings/transition_binding.dart';
import '../modules/transition_1/views/transition_view.dart';
import '../modules/transition_2/bindings/transition_2_binding.dart';
import '../modules/transition_2/views/transition_2_view.dart';
import '../modules/transition_3/bindings/transition_3_binding.dart';
import '../modules/transition_3/views/transition_3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

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
          name: _Paths.IMUNISASI_ORANGTUA,
          page: () => const ImunisasiOrangtuaView(),
          binding: ImunisasiOrangtuaBinding(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: _Paths.FORUM,
          page: () => const ForumView(),
          binding: ForumBinding(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: _Paths.HOME_POSYANDU,
          page: () => const HomePosyanduView(),
          binding: HomePosyanduBinding(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: _Paths.HOME_TENAGA_KESEHATAN,
          page: () => const HomeTenagaKesehatanView(),
          binding: HomeTenagaKesehatanBinding(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: _Paths.STATISTIK_POSYANDU,
          page: () => const StatistikPosyanduView(),
          binding: StatistikPosyanduBinding(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: _Paths.STATISTIK_TENAGA_KESEHATAN,
          page: () => const StatistikTenagaKesehatanView(),
          binding: StatistikTenagaKesehatanBinding(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: _Paths.FORUM_TENAGA_KESEHATAN,
          page: () => const ForumTenagaKesehatanView(),
          binding: ForumTenagaKesehatanBinding(),
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
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.ARTIKEL,
      page: () => const ArtikelView(),
      binding: ArtikelBinding(),
    ),
    GetPage(
      name: _Paths.IMUNISASI_ORANGTUA,
      page: () => const ImunisasiOrangtuaView(),
      binding: ImunisasiOrangtuaBinding(),
      transition: Transition.noTransition,
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
    GetPage(
      name: _Paths.ADD_DATA_ANAK,
      page: () => const AddDataAnakView(),
      binding: AddDataAnakBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PERTANYAAN_FORUM_ORANG_TUA,
      page: () => const AddPertanyaanForumOrangTuaView(),
      binding: AddPertanyaanForumOrangTuaBinding(),
    ),
    GetPage(
      name: _Paths.HOME_POSYANDU,
      page: () => const HomePosyanduView(),
      binding: HomePosyanduBinding(),
    ),
    GetPage(
      name: _Paths.HOME_TENAGA_KESEHATAN,
      page: () => const HomeTenagaKesehatanView(),
      binding: HomeTenagaKesehatanBinding(),
    ),
    GetPage(
      name: _Paths.ADD_KEGIATAN_POSYANDU,
      page: () => const AddKegiatanPosyanduView(),
      binding: AddKegiatanPosyanduBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PROFILE,
      page: () => const DetailProfileView(),
      binding: DetailProfileBinding(),
    ),
    GetPage(
      name: _Paths.TRANSITION_2,
      page: () => const Transition2View(),
      binding: Transition2Binding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 800),
    ),
    GetPage(
      name: _Paths.TRANSITION_3,
      page: () => const Transition3View(),
      binding: Transition3Binding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 800),
    ),
    GetPage(
      name: _Paths.DETAIL_ARTIKEL,
      page: () => const DetailArtikelView(),
      binding: DetailArtikelBinding(),
    ),
    GetPage(
      name: _Paths.JAWAB_PERTANYAAN_TENAGA_KESEHATAN,
      page: () => const JawabPertanyaanTenagaKesehatanView(),
      binding: JawabPertanyaanTenagaKesehatanBinding(),
    ),
  ];
}
