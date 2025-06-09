import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/models/Imunization_model.dart';

class CustomImunitationCard extends StatelessWidget {
  final ImmunizationModel immunization;
  const CustomImunitationCard({super.key, required this.immunization});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 19.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            // flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${immunization.nama} (${immunization.umur})",
                  style: AppTextStyles.body2Medium,
                ),
                SizedBox(height: 5.h),
                Text(
                  "${immunization.vaksin} - Dosis ${immunization.dosis}",
                  style: AppTextStyles.body3Regular,
                ),
                SizedBox(height: 5.h),
                Text(
                  "Jadwal ${immunization.jadwal}",
                  style: AppTextStyles.body3Regular.copyWith(
                    color: AppColors.neutral70,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Expanded(
            // flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  immunization.status == 'Mendatang'
                      ? Icons.access_time
                      : Icons.check_circle_outline,
                  color: immunization.status == 'Mendatang'
                      ? AppColors.warning70
                      : Colors.green,
                ),
                SizedBox(width: 6.w),
                Text(
                  immunization.status,
                  style: AppTextStyles.body2Regular.copyWith(
                    color: immunization.status == 'Mendatang'
                        ? AppColors.warning70
                        : Colors.green,
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
