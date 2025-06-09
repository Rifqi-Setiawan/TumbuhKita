import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/buttons/category_imuniation.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_imunitation_card.dart';

import '../controllers/imunisasi_orangTua_controller.dart';

class ImunisasiOrangtuaView extends GetView<ImunisasiOrangtuaController> {
  const ImunisasiOrangtuaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                Text(
                  "Imunisasi",
                  style: AppTextStyles.heading7Bold.copyWith(
                    color: AppColors.secondary50,
                  ),
                ),
                SizedBox(height: 30.h),
                CategoryImuniation(categories: controller.category, selectedCategory: controller.selectedCategory, onCategorySelected: controller.selectCategory),
                SizedBox(height: 24.h,),
                Obx(() {
                  final filteredData = controller.getFilteredData();
                  
                  return Column(
                    children: filteredData.map((immunization) {
                      return CustomImunitationCard(
                        immunization: immunization,
                      );
                    }).toList(),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
