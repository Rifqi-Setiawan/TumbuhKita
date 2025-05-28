import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CategoryChartDetailbaby extends StatelessWidget {
  const CategoryChartDetailbaby({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.sp, vertical: 8.sp),
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 10.sp),
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
          SizedBox(width: 8.w),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 10.sp),
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
          SizedBox(width: 8.w),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 10.sp),
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
          SizedBox(width: 8.w),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 10.sp),
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
    );
  }
}
