import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

class CustomButtonProfile extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const CustomButtonProfile({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary70,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: AppTextStyles.body1SemiBold.copyWith(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
