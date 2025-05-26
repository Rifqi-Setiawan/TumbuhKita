import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/custom_profile_baby.dart';
import 'dart:math' as math;

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
          Stack(
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
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primary10.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15.sp),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Tinggi Badan",
                                  style: AppTextStyles.body3Regular,
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "50",
                                      style: AppTextStyles.heading8SemiBold,
                                    ),
                                    SizedBox(width: 3.w),
                                    Text(
                                      "cm",
                                      style: AppTextStyles.body3Regular,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7.h),
                                Text(
                                  "Normal",
                                  style: AppTextStyles.body3Medium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffEAE2FF),
                              borderRadius: BorderRadius.circular(15.sp),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Tinggi Badan",
                                  style: AppTextStyles.body3Regular,
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "50",
                                      style: AppTextStyles.heading8SemiBold,
                                    ),
                                    SizedBox(width: 3.w),
                                    Text(
                                      "cm",
                                      style: AppTextStyles.body3Regular,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7.h),
                                Text(
                                  "Normal",
                                  style: AppTextStyles.body3Medium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffE0D4FF),
                              borderRadius: BorderRadius.circular(15.sp),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Tinggi Badan",
                                  style: AppTextStyles.body3Regular,
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "50",
                                      style: AppTextStyles.heading8SemiBold,
                                    ),
                                    SizedBox(width: 3.w),
                                    Text(
                                      "cm",
                                      style: AppTextStyles.body3Regular,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7.h),
                                Text(
                                  "Normal",
                                  style: AppTextStyles.body3Medium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Grafik Pertumbuhan",
                        style: AppTextStyles.heading7SemiBold.copyWith(
                          color: Color(0xff2C0B61),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.sp, vertical: 8.sp),
                      decoration: BoxDecoration(
                        color: Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.sp,
                                vertical: 10.sp,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.sp),
                              ),
                              child: Center(
                                child: Text(
                                  "Berat Badan",
                                  style: AppTextStyles.caption2Regular.copyWith(
                                    color: AppColors.secondary30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.sp,
                                vertical: 10.sp,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.sp),
                              ),
                              child: Center(
                                child: Text(
                                  "Tinggi Badan",
                                  style: AppTextStyles.caption2Regular.copyWith(
                                    color: AppColors.secondary30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.sp,
                                vertical: 10.sp,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.sp),
                              ),
                              child: Center(
                                child: Text(
                                  "Lingkar Kepala",
                                  style: AppTextStyles.caption2Regular.copyWith(
                                    color: AppColors.secondary30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.sp,
                                vertical: 10.sp,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.sp),
                              ),
                              child: Center(
                                child: Text(
                                  "Gizi",
                                  style: AppTextStyles.caption2Regular.copyWith(
                                    color: AppColors.secondary30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
        ],
      ),
    );
  }
}
