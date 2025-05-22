import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F0FF), // Warna ungu muda Anda
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.HOME,
        onGenerateRoute: (routeSettings) {
          // ... (kode onGenerateRoute Anda sudah oke) ...
          final page = AppPages.routes
              .firstWhere((route) => route.name == Routes.NAVIGATION)
              .children
              .firstWhere(
                (page) => page.name == routeSettings.name,
                orElse: () => AppPages.routes
                    .firstWhere((route) => route.name == Routes.NAVIGATION)
                    .children
                    .firstWhere(
                      (page) => page.name == Routes.HOME,
                    ), // Fallback ke Home
              );

          return GetPageRoute(
            settings: routeSettings,
            page: page.page,
            binding: page.binding,
            transition: page.transition ?? Get.defaultTransition,
          );
        },
      ),
      bottomNavigationBar: Obx(() {
        // Tambahkan log untuk debugging
        print("Building BottomNavBar. Selected Index: ${controller.selectedIndex.value}");
        print("Number of items: ${controller.navigationItemsData.length}");

        if (controller.navigationItemsData.isEmpty) {
          print("WARNING: navigationItemsData is EMPTY!");
          return const SizedBox.shrink(); // Jangan render apa-apa jika item kosong
        }

        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // PENTING: Coba ini untuk konsistensi tampilan
          backgroundColor: Colors.white,      // PENTING: Set background eksplisit untuk navbar
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changePage,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey, // Pastikan ini kontras dengan backgroundColor navbar
          showUnselectedLabels: true,
          items: controller.navigationItemsData.map((item) {
            bool isSelected =
                controller.navigationItemsData.indexOf(item) ==
                    controller.selectedIndex.value;
            return BottomNavigationBarItem(
              icon: Icon(isSelected ? item['selectedIcon'] : item['icon']),
              label: item['label'],
            );
          }).toList(),
        );
      }),
    );
  }
}