import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CustomBabyDetailStatistikCard extends StatelessWidget {
  const CustomBabyDetailStatistikCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColors.primary10.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15.sp),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Status", style: AppTextStyles.body3Regular),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Ideal", style: AppTextStyles.heading8SemiBold),
                    SizedBox(width: 3.w),
                    Icon(
                      Icons.sentiment_very_satisfied_sharp,
                      color: AppColors.success50,
                      size: 20.sp,
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                Text("Normal", style: AppTextStyles.body3Medium),
              ],
            ),
          ),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: Color(0xffEAE2FF),
              borderRadius: BorderRadius.circular(15.sp),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Tinggi Badan", style: AppTextStyles.body3Regular),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("50", style: AppTextStyles.heading8SemiBold),
                    SizedBox(width: 3.w),
                    Text("cm", style: AppTextStyles.body3Regular),
                  ],
                ),
                SizedBox(height: 7.h),
                Text("Normal", style: AppTextStyles.body3Medium),
              ],
            ),
          ),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: Color(0xffE0D4FF),
              borderRadius: BorderRadius.circular(15.sp),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Tinggi Badan", style: AppTextStyles.body3Regular),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("50", style: AppTextStyles.heading8SemiBold),
                    SizedBox(width: 3.w),
                    Text("cm", style: AppTextStyles.body3Regular),
                  ],
                ),
                SizedBox(height: 7.h),
                Text("Normal", style: AppTextStyles.body3Medium),
              ],
            ),
          ),
        ),
      ],
    );
  }
}