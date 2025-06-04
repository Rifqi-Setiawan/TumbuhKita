import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import '../controllers/navigation_controller.dart';
// Import custom navbar
import 'package:tumbuh_kita/app/widgets/custom_navbar/custom_bottom_navbar.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    const Color scaffoldBackgroundColor = Color(0xffF4F0FF);

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      extendBody: true,
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.HOME,
        onGenerateRoute: (routeSettings) {
          final page = AppPages.routes
              .firstWhere((route) => route.name == Routes.NAVIGATION)
              .children
              .firstWhere(
                (page) => page.name == routeSettings.name,
                orElse: () => AppPages.routes
                    .firstWhere((route) => route.name == Routes.NAVIGATION)
                    .children
                    .firstWhere((page) => page.name == Routes.HOME),
              );
          return GetPageRoute(
            settings: routeSettings,
            page: page.page,
            binding: page.binding,
            transition: page.transition ?? Get.defaultTransition,
          );
        },
      ),
      // Ganti bottomNavigationBar dengan custom navbar
      bottomNavigationBar: CustomBottomNavbar(navController: controller),
    );
  }
}