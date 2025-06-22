import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CustomPertanyaanStatistikTenagaKesehatan extends StatelessWidget {
  final String pertanyaan;
  final VoidCallback onTap;

  const CustomPertanyaanStatistikTenagaKesehatan({
    super.key,
    required this.pertanyaan,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  pertanyaan,
                  style: AppTextStyles.body3Medium.copyWith(color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              SizedBox(width: 15.w),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color: AppColors.warning50,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Text(
                    "Jawab",
                    style: AppTextStyles.body3Regular.copyWith(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            height: 1.h,
            color: const Color(0x1A000000),
          ),
        ],
      ),
    );
  }
}