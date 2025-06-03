import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_baby_detail_card.dart';
import 'package:tumbuh_kita/app/widgets/category_chart_detailBaby.dart';
import 'package:tumbuh_kita/app/widgets/components/detail_baby_chart_components.dart';
import 'package:tumbuh_kita/app/widgets/custom_profile_baby.dart';

import '../controllers/detail_baby_controller.dart';

class DetailBabyView extends GetView<DetailBabyController> {
  const DetailBabyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F0FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F0FF),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.chevron_left, size: 40.sp),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            "Nadhira Salsabila Vanka",
            style: AppTextStyles.body1Bold.copyWith(color: Color(0xff2C0B61)),
          ),
          SizedBox(height: 108.h),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.sp),
                      topRight: Radius.circular(50.sp),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 79.h),
                      CustomBabyDetailCard(),
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Grafik Pertumbuhan",
                          style: AppTextStyles.heading7Bold.copyWith(
                            color: Color(0xff2C0B61),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      CategoryChartDetailbaby(),
                      SizedBox(height: 15.h),
                      Column(
                        children: [
                          DetailBabyChartComponents(
                            spots: controller.weightDataPoints,
                            minX: 1,
                            maxX: 16,
                            minY: 0,
                            maxY: 100,
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/IkonChart.png"),
                              Text(
                                "Tinggi Badan",
                                style: AppTextStyles.caption1Regular.copyWith(
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Tinggi Badan",
                                  style: AppTextStyles.body3Medium,
                                ),
                                Container(
                                  width: 220.w,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 5.h,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black.withOpacity(0.1),
                                      width: 1.sp,
                                    ),
                                    borderRadius: BorderRadius.circular(50.sp),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("50 cm"),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 14.w,
                                          vertical: 5.h,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15.r),
                                          color: AppColors.error70,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Pendek",
                                            style: AppTextStyles.caption2Regular
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pertumbuhan",
                                  style: AppTextStyles.body3Medium,
                                ),
                                Container(
                                  width: 220.w,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 5.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.warning30,
                                    border: Border.all(
                                      color: Colors.black.withOpacity(0.1),
                                      width: 1.sp,
                                    ),
                                    borderRadius: BorderRadius.circular(50.sp),
                                  ),
                                  child: Center(
                                    child: Text("Kurang Baik",
                                     style: AppTextStyles.caption1Semibold,),
                                  )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -80.sp,
                  child: Center(
                    child: CustomProfileBaby(
                      profileImagePath: "assets/images/profileBayi.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
