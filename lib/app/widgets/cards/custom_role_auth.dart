import 'package:flutter/material.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomRoleAuth extends StatelessWidget {
  final String role;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomRoleAuth({
    super.key,
    required this.role,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 14.5.h),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary50 : const Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: isSelected ? Colors.white : Colors.black),
              const SizedBox(height: 5),
              Text(
                role,
                style: AppTextStyles.body3Regular.copyWith(
                  color: isSelected ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
