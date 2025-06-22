import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CustomStatistikForumTenagaKesehatan extends StatelessWidget {
  final int totalPertanyaan;
  final int belumDijawab;
  final int sudahDijawab;

  const CustomStatistikForumTenagaKesehatan({
    super.key,
    required this.totalPertanyaan,
    required this.belumDijawab,
    required this.sudahDijawab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 27.h),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStatRow("Total Pertanyaan", totalPertanyaan, AppColors.neutral30, AppColors.neutral90),
          SizedBox(height: 14.h),
          _buildStatRow("Belum Dijawab", belumDijawab, const Color(0xffFFB1B1).withOpacity(0.5), AppColors.error70),
          SizedBox(height: 14.h),
          _buildStatRow("Sudah Dijawab", sudahDijawab, const Color(0xff38D934).withOpacity(0.35), AppColors.success70),
        ],
      ),
    );
  }

  Widget _buildStatRow(String title, int value, Color backgroundColor, Color titleColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.body1Regular.copyWith(
            color: AppColors.secondary50,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.8.h),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            "$value",
            style: AppTextStyles.body1Medium.copyWith(color: titleColor),
          ),
        ),
      ],
    );
  }
}
