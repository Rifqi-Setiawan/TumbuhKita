import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CategoryImuniation extends StatelessWidget {
  final List<String> categories;
  final RxString selectedCategory;
  final Function(String) onCategorySelected;
  const CategoryImuniation({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 12.w, 
        runSpacing: 8.h, 
        children: categories.map((category) {
          return Obx(() {
            final isSelected = selectedCategory.value == category;
            
            return GestureDetector(
              onTap: () => onCategorySelected(category),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                ),
                decoration: BoxDecoration(
                  color: isSelected 
                    ? AppColors.primary50
                    : Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                  border: Border.all(
                    color: AppColors.primary50,
                    width: 1,
                  ),
                ),
                child: Text(
                  category.capitalizeFirst!,
                  style: AppTextStyles.body3Regular.copyWith(
                    color: isSelected ? Colors.white : AppColors.primary50,
                  ),
                ),
              ),
            );
          });
        }).toList(),
      ),
    );
  }
}
