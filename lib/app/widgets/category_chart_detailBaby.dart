import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/modules/detail_baby/controllers/detail_baby_controller.dart';

class CategoryChartDetailbaby extends StatelessWidget {
  const CategoryChartDetailbaby({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailBabyController controller = Get.find<DetailBabyController>();
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.sp, vertical: 8.sp),
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Obx(() => Row(
        children: [
          _buildCategoryButton(
            controller: controller,
            index: 0,
            text: "Berat Badan",
          ),
          SizedBox(width: 8.w),
          _buildCategoryButton(
            controller: controller,
            index: 1,
            text: "Tinggi Badan",
          ),
          SizedBox(width: 8.w),
          _buildCategoryButton(
            controller: controller,
            index: 2,
            text: "Lingkar Kepala",
          ),
          SizedBox(width: 8.w),
          _buildCategoryButton(
            controller: controller,
            index: 3,
            text: "Gizi",
          ),
        ],
      )),
    );
  }

  Widget _buildCategoryButton({
    required DetailBabyController controller,
    required int index,
    required String text,
  }) {
    bool isActive = controller.selectedCategory.value == index;
    
    return Expanded(
      child: GestureDetector(
        onTap: () => controller.changeCategory(index),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 10.sp),
          decoration: BoxDecoration(
            color: isActive ? AppColors.secondary50 : Colors.white,
            borderRadius: BorderRadius.circular(8.sp),
            border: isActive 
              ? Border.all(color: AppColors.secondary50, width: 1)
              : Border.all(color: Colors.transparent, width: 1),
          ),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.caption2Regular.copyWith(
                color: isActive ? Colors.white : AppColors.secondary30,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
