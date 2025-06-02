import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

class NavigationController extends GetxController {
  static const int NAVIGATOR_KEY_HOME = 1;

  var selectedIndex = 0.obs;

  // Data item navbar, label disesuaikan dengan desain
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
      'route': Routes.POSYANDU,
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
    Routes.POSYANDU,
    Routes.FORUM,
  ];

  void changePage(int index) {
    if (selectedIndex.value == index) return;
    selectedIndex.value = index;
    Get.toNamed(pageRoutes[index], id: NAVIGATOR_KEY_HOME);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}