import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import 'package:tumbuh_kita/app/widgets/buttons/custom_add_button.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_detail_statistik_card.dart';
import 'package:tumbuh_kita/app/widgets/components/detail_baby_chart_components.dart';

import '../controllers/statistik_posyandu_controller.dart';

class StatistikPosyanduView extends GetView<StatistikPosyanduController> {
  const StatistikPosyanduView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Center(
                  child: Text(
                    "Statistik",
                    style: AppTextStyles.heading7Bold.copyWith(
                      color: AppColors.secondary50,
                    ),
                  ),
                ),
                SizedBox(height: 45.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 13.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(1, 2),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Statistik Anak Keseluruhan",
                        style: AppTextStyles.body3Semibold,
                      ),
                      SizedBox(height: 8.h),
                      CustomBabyDetailStatistikCard(),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  "Grafik Pertumbuhan",
                  style: AppTextStyles.heading7Bold.copyWith(
                    color: AppColors.secondary50,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => controller.openMonthPicker(context),
                        child: Row(
                          children: [
                            Obx(
                              () => Text(
                                DateFormat(
                                  'MMMM yyyy',
                                  'id_ID',
                                ).format(controller.selectedDate.value),
                                style: AppTextStyles.body1Bold,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: AppColors.secondary50,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.h),
                      DetailBabyChartComponents(
                        spots: controller.weightDataPoints,
                        minX: 1,
                        maxX: 16,
                        minY: 0,
                        maxY: 100,
                      ),
                      SizedBox(height: 17.h),
                    ],
                  ),
                ),
                SizedBox(height: 17.h),
                Text("Daftar Anak", style: AppTextStyles.heading7SemiBold),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Cari data anak",
                            hintStyle: AppTextStyles.caption1Semibold.copyWith(
                              color: Colors.black.withOpacity(0.2),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w,
                              vertical: 8.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    CustomAddButton(
                      onPressed: () => {Get.toNamed(Routes.ADD_DATA_ANAK)},
                      padding: EdgeInsets.all(4.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
