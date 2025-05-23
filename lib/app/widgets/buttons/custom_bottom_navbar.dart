import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tumbuh_kita/app/modules/navigation/controllers/navigation_controller.dart';

class CustomBottomNavbar extends StatelessWidget {
  final NavigationController navController; 

  const CustomBottomNavbar({
    super.key,
    required this.navController,
  });

  @override
  Widget build(BuildContext context) {
    // Ukuran dan warna bisa disesuaikan
    const double navBarHeight = 75.0; // Tinggi keseluruhan navbar container
    const double itemTopPadding = 10.0; // Padding atas untuk ikon dan teks
    const Color navBarBackgroundColor = Colors.white;
    const Color indicatorColor = Colors.purple; // Warna bulatan
    const double indicatorSize = 50.0; // Diameter bulatan
    final Color selectedIconColor = Colors.white; // Warna ikon saat di atas bulatan
    final Color selectedLabelColor = indicatorColor; // Warna label saat terpilih (ungu)
    final Color unselectedItemColor = Colors.grey.shade600; // Warna item tidak terpilih

    // Dapatkan lebar layar untuk perhitungan posisi
    final screenWidth = MediaQuery.of(context).size.width;
    final itemCount = navController.navigationItemsData.length;
    final itemWidth = screenWidth / itemCount;

    return Obx(
      () {
        if (navController.navigationItemsData.isEmpty) {
          return const SizedBox(
            height: navBarHeight,
            child: Center(child: Text("Loading nav items...")), // Atau CircularProgressIndicator
          );
        }

        int selectedIndex = navController.selectedIndex.value;

        return Container(
          height: navBarHeight,
          // Margin agar terlihat efek melayang & rounded
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          padding: const EdgeInsets.only(bottom: 5), // Sedikit padding bawah untuk label
          decoration: BoxDecoration(
            color: navBarBackgroundColor,
            borderRadius: BorderRadius.circular(25.0), // Rounded corners untuk bar
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // --- Indikator Bulat yang Dianimasikan ---
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOutCirc, // Kurva animasi
                left: (itemWidth * selectedIndex) + (itemWidth - indicatorSize) / 2,
                // Posisikan sedikit ke atas dari tengah vertikal navbar agar ikon masuk
                top: (navBarHeight - indicatorSize - itemTopPadding) / 2 - (indicatorSize/4) + (itemTopPadding/2) -2, // Sesuaikan ini
                child: Container(
                  width: indicatorSize,
                  height: indicatorSize,
                  decoration: const BoxDecoration(
                    color: indicatorColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              // --- Item-item Navigasi ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center, // Pusatkan item secara vertikal
                children: List.generate(itemCount, (index) {
                  final itemData = navController.navigationItemsData[index];
                  final bool isSelected = selectedIndex == index;

                  return Expanded( // Gunakan Expanded agar setiap item mengambil ruang yang sama
                    child: GestureDetector(
                      onTap: () => navController.changePage(index),
                      behavior: HitTestBehavior.opaque, // Agar area kosong juga bisa di-tap
                      child: Container(
                        // backgroundColor: isSelected ? Colors.red.withOpacity(0.1) : null, // Untuk debug area tap
                        padding: const EdgeInsets.only(top: itemTopPadding),
                        child: Column(
                          mainAxisSize: MainAxisSize.min, // Agar Column tidak mengambil tinggi maksimal
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              isSelected
                                  ? itemData['selectedIcon']
                                  : itemData['icon'],
                              color: isSelected
                                  ? selectedIconColor
                                  : unselectedItemColor,
                              size: 26.0, // Sesuaikan ukuran ikon
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              itemData['label'],
                              style: TextStyle(
                                color: isSelected
                                    ? selectedLabelColor
                                    : unselectedItemColor,
                                fontSize: 10.0, // Sesuaikan ukuran font
                                fontWeight: isSelected
                                    ? FontWeight.w600 // Sedikit tebal saat terpilih
                                    : FontWeight.normal,
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
            ],
          ),
        );
      },
    );
  }
}