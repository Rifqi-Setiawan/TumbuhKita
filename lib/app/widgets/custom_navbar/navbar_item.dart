import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final bool isSelected;
  final Color selectedLabelColor;
  final Color unselectedItemColor;
  final VoidCallback onTap;
  final double indicatorSize;

  const NavbarItem({
    super.key,
    required this.icon,
    required this.selectedIcon,
    required this.label,
    required this.isSelected,
    required this.selectedLabelColor,
    required this.unselectedItemColor,
    required this.onTap,
    required this.indicatorSize,
  });

  @override
  Widget build(BuildContext context) {
    final double iconOffset = isSelected ? 0 : 2;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut,
              margin: EdgeInsets.only(bottom: 4, top: iconOffset),
              child: Icon(
                isSelected ? selectedIcon : icon,
                color: isSelected ? Colors.transparent : unselectedItemColor,
                size: 30.0,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? selectedLabelColor : unselectedItemColor,
                fontSize: 12.0,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}