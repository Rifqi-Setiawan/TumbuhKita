import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'navbar_item.dart';
import 'package:tumbuh_kita/app/modules/navigation/controllers/navigation_controller.dart';

class CustomBottomNavbar extends StatelessWidget {
  final NavigationController navController;
  const CustomBottomNavbar({super.key, required this.navController});

  @override
  Widget build(BuildContext context) {
    const double navBarHeight = 65.0;
    const double indicatorSize = 48.0;
    const Color navBarBackgroundColor = Colors.white;
    const Color indicatorColor = Color(0xFF9B7BFF);
    final Color selectedIconColor = Colors.white;
    final Color selectedLabelColor = indicatorColor;
    final Color unselectedItemColor = Colors.grey.shade600;

    final screenWidth = MediaQuery.of(context).size.width;
    final itemCount = navController.navigationItemsData.length;
    final itemWidth = screenWidth / itemCount;

    return Obx(() {
      if (navController.navigationItemsData.isEmpty) {
        return const SizedBox(
          height: navBarHeight + 20,
          child: Center(child: Text("Loading nav items...")),
        );
      }
      int selectedIndex = navController.selectedIndex.value;

      return Container(
        height: navBarHeight + 16,
        color: navBarBackgroundColor,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Bulatan indikator animasi
            AnimatedPositioned(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut,
              left: (itemWidth * selectedIndex) + (itemWidth - indicatorSize) / 2,
              bottom: 26,
              child: Container(
                width: indicatorSize,
                height: indicatorSize,
                decoration: BoxDecoration(
                  color: indicatorColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: indicatorColor.withOpacity(0.18),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    navController.navigationItemsData[selectedIndex]['selectedIcon'],
                    color: selectedIconColor,
                    size: 26,
                  ),
                ),
              ),
            ),
            // Item navigasi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(itemCount, (index) {
                final itemData = navController.navigationItemsData[index];
                final bool isSelected = selectedIndex == index;
                return Expanded(
                  child: NavbarItem(
                    icon: itemData['icon'],
                    selectedIcon: itemData['selectedIcon'],
                    label: itemData['label'],
                    isSelected: isSelected,
                    selectedLabelColor: selectedLabelColor,
                    unselectedItemColor: unselectedItemColor,
                    onTap: () => navController.changePage(index),
                    indicatorSize: indicatorSize,
                  ),
                );
              }),
            ),
          ],
        ),
      );
    });
  }
}