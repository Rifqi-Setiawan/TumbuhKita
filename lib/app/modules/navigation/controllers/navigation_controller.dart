import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/helpers/role_storage_helper.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

class NavigationController extends GetxController {
  static const int NAVIGATOR_KEY_HOME = 1;

  var selectedIndex = 0.obs;

  // Jadikan list ini kosong pada awalnya, akan diisi berdasarkan role
  final RxList<Map<String, dynamic>> navigationItemsData = <Map<String, dynamic>>[].obs;
  final RxList<String> pageRoutes = <String>[].obs;

  // Initial route juga akan diatur berdasarkan role
  String initialRoute = Routes.HOME;

  void changePage(int index) {
    if (selectedIndex.value == index) return;
    
    // Pastikan index valid sebelum melanjutkan
    if (index >= pageRoutes.length) return;

    selectedIndex.value = index;
    Get.toNamed(pageRoutes[index], id: NAVIGATOR_KEY_HOME);
  }

  @override
  void onInit() {
    super.onInit();
    _setupNavigationForRole();
  }
  void _setupNavigationForRole() async {
    final role = RoleStorageHelper.getRole();
    print("Current Role: $role");

    List<Map<String, dynamic>> newNavItems = [];
    switch (role) {
      case 'Posyandu':
        initialRoute = Routes.HOME_POSYANDU;
        newNavItems = [
          {
            'label': 'Beranda',
            'icon': Icons.home_outlined,
            'selectedIcon': Icons.home,
            'route': Routes.HOME_POSYANDU,
          },
          {
            'label': 'Statistik',
            'icon': Icons.moving_outlined,
            'selectedIcon': Icons.moving,
            'route': Routes.STATISTIK_POSYANDU,
          },
          {
            'label': 'Posyandu', 
            'icon': Icons.local_hospital_outlined,
            'selectedIcon': Icons.local_hospital,
            'route': Routes.IMUNISASI_ORANGTUA,
          },
          {
            'label': 'Forum',
            'icon': Icons.forum_outlined,
            'selectedIcon': Icons.forum,
            'route': Routes.FORUM,
          },
        ];
        break;

      case 'Kesehatan':
        initialRoute = Routes.HOME_TENAGA_KESEHATAN;
        newNavItems = [
          {
            'label': 'Beranda',
            'icon': Icons.medical_services_outlined,
            'selectedIcon': Icons.medical_services,
            'route': Routes.HOME_TENAGA_KESEHATAN,
          },
          // {
          //   'label': 'Pasien', // Contoh item untuk Tenaga Kesehatan
          //   'icon': Icons.sick_outlined,
          //   'selectedIcon': Icons.sick,
          //   'route': Routes.DAFTAR_PASIEN, // Ganti dengan route Anda
          // },
        ];
        break;

      case 'Orang Tua':
      default: 
        initialRoute = Routes.HOME;
        newNavItems = [
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
        ];
        break;
    }
    navigationItemsData.assignAll(newNavItems);
    pageRoutes.assignAll(newNavItems.map((item) => item['route'] as String).toList());
    selectedIndex.value = 0;
  }
}