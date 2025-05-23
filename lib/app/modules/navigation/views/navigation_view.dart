import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart'; // Sesuaikan path
import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // --- DIMENSI DAN STYLE (SESUAIKAN DI SINI) ---
    const double bottomBarHeight = 70.0;       // Tinggi bar navigasi putih
    const double movingIndicatorSize = 62.0;   // Diameter Indikator Aktif (bulatan ungu)
    const double iconInBarSize = 28.0;         // Ukuran ikon di bar (tidak terpilih)
    const double iconOnIndicatorSize = 30.0;   // Ukuran ikon di Indikator Aktif (terpilih)
    const double labelFontSize = 11.0;         // Ukuran font label
    const double barCornerRadius = 25.0;       // Radius sudut untuk bar putih
    const double barElevation = 8.0;           // Shadow untuk bar putih

    const Color unselectedItemColor = Colors.grey;
    const Color indicatorBackgroundColor = AppColors.primary70;
    const Color iconOnIndicatorColor = Colors.white;
    const Color bottomBarColor = Colors.white;
    const Color scaffoldBackgroundColor = Color(0xffF4F0FF);

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      // extendBody WAJIB true agar ilusi notch bekerja dan body tidak terpotong
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
      bottomNavigationBar: Obx(() {
        if (controller.navigationItemsData.isEmpty) {
          // Placeholder jika data belum ada, tingginya disesuaikan
          return SizedBox(height: bottomBarHeight + (movingIndicatorSize / 2) - (movingIndicatorSize * 0.35));
        }
        final itemCount = controller.navigationItemsData.length;
        if (itemCount == 0) {
          return SizedBox(height: bottomBarHeight + (movingIndicatorSize / 2) - (movingIndicatorSize * 0.35));
        }

        final itemWidth = screenWidth / itemCount;
        final selectedIndex = controller.selectedIndex.value;
        final selectedItemData = controller.navigationItemsData[selectedIndex];

        final double indicatorCenterX = (itemWidth * selectedIndex) + (itemWidth / 2);
        final double indicatorLeftX = indicatorCenterX - (movingIndicatorSize / 2);

        // Tinggi total yang dibutuhkan oleh slot bottomNavigationBar di Scaffold
        // agar Indikator Aktif tidak menyebabkan overflow terdeteksi.
        // Yaitu tinggi bar + bagian indikator yang menonjol ke atas.
        // Indikator akan diposisikan agar pusatnya kira-kira di tepi atas bar.
        // Jadi, setengah indikator (radius) akan menonjol ke atas.
        final double totalVisualHeight = bottomBarHeight + (movingIndicatorSize / 2) - (movingIndicatorSize * 0.35); // Kurangi sedikit jika indikator tidak menonjol penuh


        return SizedBox(
          height: totalVisualHeight, // Laporkan tinggi ini ke Scaffold
          child: Stack(
            clipBehavior: Clip.none, // Izinkan Indikator Aktif keluar dari batas SizedBox
            alignment: Alignment.bottomCenter,
            children: [
              // Layer 1: Bar Navigasi Putih (Dasar)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0, // Bar putih berada di paling bawah dalam SizedBox ini
                height: bottomBarHeight,
                child: Container(
                  decoration: BoxDecoration(
                    color: bottomBarColor,
                    borderRadius: BorderRadius.circular(barCornerRadius),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: barElevation,
                        offset: const Offset(0, -1), // Shadow ke atas
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(itemCount, (index) {
                      final itemData = controller.navigationItemsData[index];
                      final bool isSelected = selectedIndex == index;

                      return Expanded(
                        child: GestureDetector(
                          onTap: () => controller.changePage(index),
                          behavior: HitTestBehavior.opaque,
                          // Tidak ada feedback visual (splash) saat tap pada item bar
                          child: Opacity(
                            // Item di bar (ikon & label) akan transparan jika terpilih,
                            // karena Indikator Aktif yang akan mewakilinya.
                            opacity: isSelected ? 0.0 : 1.0,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  itemData['icon'],
                                  color: unselectedItemColor,
                                  size: iconInBarSize,
                                ),
                                const SizedBox(height: 4), // Jarak ikon dan label
                                Text(
                                  itemData['label'] ?? '',
                                  style: const TextStyle(
                                    fontSize: labelFontSize,
                                    color: unselectedItemColor,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),

              // Layer 2: Indikator Aktif yang Bergerak (Bulatan Ungu)
              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: indicatorLeftX, end: indicatorLeftX),
                duration: const Duration(milliseconds: 300), // Durasi animasi
                curve: Curves.easeOutQuint, // Kurva animasi
                builder: (context, animatedLeftX, child) {
                  return Positioned(
                    left: animatedLeftX,
                    // Atur 'bottom' agar pusat Indikator Aktif berada di sekitar
                    // tepi atas bar putih, sehingga menciptakan ilusi notch.
                    // Jika pusat Indikator Aktif = tepi atas bar putih:
                    // bottom = tinggi_bar_putih - radius_indikator
                    bottom: bottomBarHeight - (movingIndicatorSize / 2),
                    width: movingIndicatorSize,
                    height: movingIndicatorSize,
                    child: Container(
                      decoration: BoxDecoration(
                        color: indicatorBackgroundColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          selectedItemData['selectedIcon'],
                          color: iconOnIndicatorColor,
                          size: iconOnIndicatorSize,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}