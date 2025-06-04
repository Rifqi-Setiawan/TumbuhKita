part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const ARTIKEL = _Paths.ARTIKEL;
  static const POSYANDU = _Paths.POSYANDU;
  static const FORUM = _Paths.FORUM;
  static const NAVIGATION = _Paths.NAVIGATION;
  static const DETAIL_BABY = _Paths.DETAIL_BABY;
  static const TRANSITION = _Paths.TRANSITION;
  static const DETAIL_PROFILE_ORANG_TUA = _Paths.DETAIL_PROFILE_ORANG_TUA;
  static const ADD_DATA_ANAK = _Paths.ADD_DATA_ANAK;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const ARTIKEL = '/artikel';
  static const POSYANDU = '/posyandu';
  static const FORUM = '/forum';
  static const NAVIGATION = '/navigation';
  static const DETAIL_BABY = '/detail-baby';
  static const TRANSITION = '/transition';
  static const DETAIL_PROFILE_ORANG_TUA = '/detail-profile-orang-tua';
  static const ADD_DATA_ANAK = '/add-data-anak';
}
