import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/helpers/role_storage_helper.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

class NavigationController extends GetxController {
  static const int NAVIGATOR_KEY_HOME = 1;

  var selectedIndex = 0.obs;
  final RxList<Map<String, dynamic>> navigationItemsData = [
    {
      'label': 'Beranda',
      'icon': Icons.home_outlined,
      'selectedIcon': Icons.home,
      'route': Routes.HOME,
    },
    {
      'label': 'Artikel',
      'icon': Icons.article_outlined,
      'selectedIcon': Icons.article,
      'route': Routes.ARTIKEL,
    },
    {
      'label': 'Imunisasi',
      'icon': Icons.vaccines_outlined,
      'selectedIcon': Icons.vaccines,
      'route': Routes.IMUNISASI_ORANGTUA,
    },
    {
      'label': 'Forum',
      'icon': Icons.forum_outlined,
      'selectedIcon': Icons.forum,
      'route': Routes.FORUM,
    },
  ].obs;

  final List<String> pageRoutes = [
    Routes.HOME,
    Routes.ARTIKEL,
    Routes.IMUNISASI_ORANGTUA,
    Routes.FORUM,
  ];

  String initialRoute = Routes.HOME;

  void changePage(int index) {
    if (selectedIndex.value == index) return;
    selectedIndex.value = index;
    Get.toNamed(pageRoutes[index], id: NAVIGATOR_KEY_HOME);
  }

  @override
  void onInit() async {
    super.onInit();
    final role = RoleStorageHelper.getRole();
    print(role);
    if (role == 'Orang Tua') {
      initialRoute = Routes.HOME;
    } else if (role == 'Posyandu') {
      initialRoute = Routes.HOME_POSYANDU;
    } else if (role == 'Kesehatan') {
      initialRoute = Routes.HOME_TENAGA_KESEHATAN;
    } else {
      initialRoute = Routes.HOME;
    }
  }


}