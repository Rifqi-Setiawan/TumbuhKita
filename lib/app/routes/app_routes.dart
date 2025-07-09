part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const ARTIKEL = _Paths.ARTIKEL;
  static const IMUNISASI_ORANGTUA = _Paths.IMUNISASI_ORANGTUA;
  static const FORUM = _Paths.FORUM;
  static const NAVIGATION = _Paths.NAVIGATION;
  static const DETAIL_BABY = _Paths.DETAIL_BABY;
  static const TRANSITION = _Paths.TRANSITION;
  static const DETAIL_PROFILE_ORANG_TUA = _Paths.DETAIL_PROFILE_ORANG_TUA;
  static const ADD_DATA_ANAK = _Paths.ADD_DATA_ANAK;
  static const ADD_PERTANYAAN_FORUM_ORANG_TUA =
      _Paths.ADD_PERTANYAAN_FORUM_ORANG_TUA;
  static const HOME_POSYANDU = _Paths.HOME_POSYANDU;
  static const HOME_TENAGA_KESEHATAN = _Paths.HOME_TENAGA_KESEHATAN;
  static const STATISTIK_POSYANDU = _Paths.STATISTIK_POSYANDU;
  static const ADD_KEGIATAN_POSYANDU = _Paths.ADD_KEGIATAN_POSYANDU;
  static const STATISTIK_TENAGA_KESEHATAN = _Paths.STATISTIK_TENAGA_KESEHATAN;
  static const FORUM_TENAGA_KESEHATAN = _Paths.FORUM_TENAGA_KESEHATAN;
  static const DETAIL_PROFILE = _Paths.DETAIL_PROFILE;
  static const TRANSITION_2 = _Paths.TRANSITION_2;
  static const TRANSITION_3 = _Paths.TRANSITION_3;
  static const DETAIL_ARTIKEL = _Paths.DETAIL_ARTIKEL;
  static const JAWAB_PERTANYAAN_TENAGA_KESEHATAN =
      _Paths.JAWAB_PERTANYAAN_TENAGA_KESEHATAN;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const ARTIKEL = '/artikel';
  static const IMUNISASI_ORANGTUA = '/imunisasi-orangtua';
  static const FORUM = '/forum';
  static const NAVIGATION = '/navigation';
  static const DETAIL_BABY = '/detail-baby';
  static const TRANSITION = '/transition';
  static const DETAIL_PROFILE_ORANG_TUA = '/detail-profile-orang-tua';
  static const ADD_DATA_ANAK = '/add-data-anak';
  static const ADD_PERTANYAAN_FORUM_ORANG_TUA =
      '/add-pertanyaan-forum-orang-tua';
  static const HOME_POSYANDU = '/home-posyandu';
  static const HOME_TENAGA_KESEHATAN = '/home-tenaga-kesehatan';
  static const STATISTIK_POSYANDU = '/statistik-posyandu';
  static const ADD_KEGIATAN_POSYANDU = '/add-kegiatan-posyandu';
  static const STATISTIK_TENAGA_KESEHATAN = '/statistik-tenaga-kesehatan';
  static const FORUM_TENAGA_KESEHATAN = '/forum-tenaga-kesehatan';
  static const DETAIL_PROFILE = '/detail-profile';
  static const TRANSITION_2 = '/transition-2';
  static const TRANSITION_3 = '/transition-3';
  static const DETAIL_ARTIKEL = '/detail-artikel';
  static const JAWAB_PERTANYAAN_TENAGA_KESEHATAN =
      '/jawab-pertanyaan-tenaga-kesehatan';
}
