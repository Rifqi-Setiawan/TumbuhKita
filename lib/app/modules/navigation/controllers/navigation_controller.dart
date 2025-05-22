import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

class NavigationController extends GetxController {
  //TODO: Implement NavigationController
  var selectedIndex = 0.obs;
  final List<Map<String, dynamic>> navigationItemsData = [
    {'label': 'Home', 'icon': Icons.home_outlined, 'selectedIcon': Icons.home, 'route': Routes.HOME},
    {'label': 'Artikel', 'icon': Icons.article_outlined, 'selectedIcon': Icons.article, 'route': Routes.ARTIKEL},
    {'label': 'Posyandu', 'icon': Icons.local_hospital_outlined, 'selectedIcon': Icons.local_hospital, 'route': Routes.POSYANDU},
    {'label': 'Forum', 'icon': Icons.forum_outlined, 'selectedIcon': Icons.forum, 'route': Routes.FORUM},
  ];
  final List<String> pageRoutes = [
    Routes.HOME,
    Routes.ARTIKEL,
    Routes.POSYANDU,
    Routes.FORUM,
  ];
  void changePage(int index) {
    if (selectedIndex.value == index) return; 
    selectedIndex.value = index;
    Get.toNamed(pageRoutes[index], id: 1); 
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
